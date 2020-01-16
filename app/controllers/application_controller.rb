class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?, :logged_in_sell?
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  def logged_in?
    current_user
  end
  def require_user
    if !logged_in?
      flash[:error] = "You must be logged in to perform that action"
      redirect_to login_path
    end
  end
  def logged_in_sell?
    if logged_in? && current_user.purpose == 2
      return true
    end
    return false
  end
end
