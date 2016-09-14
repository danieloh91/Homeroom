class UsersController < ApplicationController
  include AuthHelper

  def splash
    render :splash
  end

  def index
    @user = User.all
    render :instructors
  end

  def new
    @user = User.new
    if current_user != nil
      flash[:notice] = "Already logged in"
      redirect_to current_user
    end
  end

  def create
    set_user
    if @user.save
      login(@user)
      flash[:notice] = "Your account was successfully created! Welcome to HomeRoom!"
      redirect_to @user
    else
      flash[:notice] = "There was a problem creating your account. #{@user.errors.full_messages.join(', ')}."
      redirect_to new_user_path
    end
  end

  def show
    find_user
    @tweets = @user.tweets
    @instructor_tweets = []
    current_user.friends.each do |f|
      f.tweets.each do |g|
        @instructor_tweets.push(g)
      end
    end

  end

  def edit
    find_user
    auth_fail("edit other people's user information!", @user) if !auth_route(@user)
  end

  def update
    find_user
    if auth_route(@user)
      if @user.update(user_params)
        flash[:success] = "Your profile was successfully updated"
        redirect_to @user
      else
        render :edit
      end
    else
      auth_fail("update other people's user information!", @user)
    end
  end

  def destroy
    find_user
    if auth_route(@user)
      @user.destroy
      flash[:success] = "Your account has been deactivated."
      redirect_to root_path
    else
      auth_fail("Your account could not be deactivated.", user_path(@user))
    end
  end

  def follow
    find_user
    if current_user.role == false
      flash[:notice] = "As a student, you do not have follow requests"
      redirect_to current_user
    end
  end

  def add_instructor
    current_user.friend_request(find_user)
    if current_user.save
      redirect_to user_path, notice: "Request was sent to instructor"
    else
      redirect_to user_path, flash[:error] = "There was an error to adding this instructor"
    end
  end

  def confirm_instructor
    current_user.accept_request(current_user.requested_friends[0])
    if current_user.save
      redirect_to confirm_instructor_path, notice: "You have added this student to your class"
    else
      redirect_to user_path, flash[:error] = "There was an error to adding this student"
    end
  end

  def deny_instructor
    if current_user.decline_request(current_user.requested_friends[0])
      redirect_to confirm_instructor_path, notice: "Student was not added"
    else
      redirect_to user_path, flash[:error] = "There was an error removing this student"
    end
  end

  def remove_student
    find_user
    if current_user.remove_friend(@user)
      redirect_to current_user, notice: "Student was removed"
    else
      redirect_to user_path, flash[:error] = "There was an error removing this student"
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :image, :role, :course)
  end

  def set_user
    @user = User.new(user_params)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
