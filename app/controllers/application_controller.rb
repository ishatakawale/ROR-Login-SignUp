class ApplicationController < ActionController::Base
helper_method :current_user #This controller finds the user id and destroys the user session
  def current_user
    if session[:id]
        @current_user ||= User.find(session[:id])
    else
      @current_user = nil
    end
    end
end