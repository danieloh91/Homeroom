class UsersController < ApplicationController

  def splash
    render :splash
  end

  def new
    @user = User.new
    render :new
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
    render :show
  end

  def edit
    find_user
  end

  def update
    find_user
    if @user.update(user_params)
      flash[:success] = "Your profile was successfully updated"
      redirect_to @user
    else
      render :edit
    end
  end

  def destroy
    find_user
    @user.destroy
    flash[:success] = "Your account has been deactivated."
    redirect_to root_path
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
