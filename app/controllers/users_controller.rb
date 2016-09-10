class UsersController < ApplicationController

  def splash
    render :splash
  end

  def new
    @user = User.new
    render :new
  end


end
