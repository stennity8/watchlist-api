class Api::V1::WatchlistsController < ApplicationController
  before_action :set_user

  def unwatched_tvshows
    render json: @user.unwatched_tvshows
  end

  def watched_tvshows
    render json: @user.watched_tvshows
  end

  # POST request to change show to watched
  def watched_tvshow
    @watch = Watchlist.find_by(show_watched: false, user_id: params[:user_id], tv_show_id: params[:tv_show_id])

    if @watch
      @watch.update(show_watched: true)
      render json: @watch
    else
      render json: {
        error: "Something went wrong"
      }
    end
  end

  # DLEETE request to remove wathclist
  def remove_tvshow
    @watch = Watchlist.find_by(show_watched: false, user_id: params[:user_id], tv_show_id: params[:tv_show_id])

    if @watch
      @watch.destroy
      render json: @watch
    else
      render json: {
        error: "Something went wrong"
      }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:user_id])
    end

    # Only allow a trusted parameter "white list" through.
    def watchlist_params
      params.require(:watchlist).permit(:user_id, :tv_show_id)
    end
end