class Api::V1::SessionsController < ApplicationController
  def create
    @user = User.find_by(username: params[:session][:username])

    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      render json: @user, only: [:id, :username]
    else
      render json: {
        error: "Invalid Credentials"
      }
    end
  end

  def get_current_user
    # binding.pry
    if logged_in?
      render json: current_user, only: [:id, :username]
    else
      render json: {
        error: "Not logged in"
      }
    end
  end

  def destroy
    session.clear
    render json: {
      notice: "Successfully logged out"
    }
  end
end
