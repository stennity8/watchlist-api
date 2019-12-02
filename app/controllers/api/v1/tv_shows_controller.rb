class Api::V1::TvShowsController < ApplicationController
  before_action :set_tv_show, only: [:show, :update, :destroy]

  # GET /tv_shows
  def index
    @tv_shows = TvShow.all

    render json: @tv_shows, exclude: [:created_at]
  end

  # GET /tv_shows/1
  def show
    render json: @tv_show
  end

  # POST /tv_shows
  def create
    @tv_show = TvShow.new(tv_show_params)

    if @tv_show.save
      render json: @tv_show, status: :created, location: @tv_show
    else
      render json: @tv_show.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tv_shows/1
  def update
    if @tv_show.update(tv_show_params)
      render json: @tv_show
    else
      render json: @tv_show.errors, status: :unprocessable_entity
    end
  end
  
  # DELETE /tv_shows/1
  def destroy
    @tv_show.destroy
  end
  
  def add_watchlist_tvshow
    @user = User.find(params[:user_id])

    if TvShow.find_by(TMDB_ID: params[:id])
      @tv_show = TvShow.find_by(TMDB_ID: params[:id])
      @user.tv_shows << @tv_show
      
      render json: @tv_show
    else
      @tv_show = TvShow.new(tv_show_params)
      @tv_show.TMDB_ID = params[:id]
      
      if @tv_show.save
        @user.tv_shows << @tv_show
        render json: @tv_show
      else
        render json: {
          error: "Something went wrong"
        }
      end
    end
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tv_show
      @tv_show = TvShow.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tv_show_params
      params.require(:tv_show).permit(:name, :TMDB_ID, :overview, :poster_path, :vote_average, :vote_count, :genres, :first_air_date)
    end
end
