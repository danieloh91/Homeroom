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

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password_digest, :image, :role, :course)
  end

  def set_user
    @user = User.new(user_params)
  end
end
