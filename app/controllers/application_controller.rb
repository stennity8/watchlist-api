class ApplicationController < ActionController::API
  # mock logged in user
    def current_user
      User.first
    end
  
    def logged_in?
      !!current_user
    end
end
