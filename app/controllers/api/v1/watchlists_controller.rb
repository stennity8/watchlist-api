class Api::V1::WatchlistsController < ApplicationController
  before_action :set_user

  def unwatched_tvshows
    render json: @user.unwatched_tvshows
  end

  def watched_tvshows
    render json: @user.watched_tvshows
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:user_id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:watchlist).permit(:user_id, :tv_show_id)
    end
end