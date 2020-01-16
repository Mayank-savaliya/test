class UsersController < ApplicationController
  before_action :logged_in_redirect, only:[:new, :create]
  def new

  end
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path
    end
  end
  private
    def user_params
      params.require(:user).permit(:username, :email, :password,:purpose)
    end
    def logged_in_redirect
      if logged_in?
        flash[:error] = "You re already logged in"
        redirect_to root_path
      end
    end
end
