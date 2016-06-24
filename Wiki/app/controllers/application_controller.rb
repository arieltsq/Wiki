class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  helper_method :current_user
  helper_method :user_logged_in?

  protect_from_forgery with: :exception

  def current_user
 #below is a variable
  @c_user ||= User.find(session[:user_id]) if session[:user_id]

#or this below method (less efficient)
#User.find(session[:user_id]) if session[:user_id].blank?
end


def user_logged_in?
  current_user.present?
end

def authenticate_user
  unless user_logged_in?
    flash[:error] = "you must login first"
    redirect_to login_path
    #you should
    #url has the localhost/forward//
      #redirect_to login_url
  end
end

def show_all
  @snoopies = Snoopy.all
end
end
