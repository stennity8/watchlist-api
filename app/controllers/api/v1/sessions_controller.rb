class Api::V1::SessionsController < ApplicationController
  def create
    #binding.pry
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
end
