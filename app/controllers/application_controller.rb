class ApplicationController < ActionController::API
  # mock logged in user
    def current_user
      User.find(session[:user_id])
    end
  
    def logged_in?
      !!current_user
    end
end
