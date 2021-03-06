class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]
  wrap_parameters :user, include: [:username, :password, :password_confirmation]

  # GET /users/1
  def show
    render json: @user, only: [:id, :username]
  end

  # POST /users
  def create
    @user = User.new(user_params)
    
    if @user.save
      render json: @user, only: [:id, :username], status: :created
    else
      render json: {error: @user.errors}, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      # render json: @user.errors, status: :unprocessable_entity
      render json: {
        error: "Invalid Credentials"
      }
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:username, :password, :password_confirmation)
    end
end
