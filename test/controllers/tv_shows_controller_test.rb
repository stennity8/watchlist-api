require 'test_helper'

class TvShowsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tv_show = tv_shows(:one)
  end

  test "should get index" do
    get tv_shows_url, as: :json
    assert_response :success
  end

  test "should create tv_show" do
    assert_difference('TvShow.count') do
      post tv_shows_url, params: { tv_show: { TMDB_ID: @tv_show.TMDB_ID, first_air_date: @tv_show.first_air_date, genres: @tv_show.genres, name: @tv_show.name, overview: @tv_show.overview, poster_path: @tv_show.poster_path, vote_average: @tv_show.vote_average, vote_count: @tv_show.vote_count } }, as: :json
    end

    assert_response 201
  end

  test "should show tv_show" do
    get tv_show_url(@tv_show), as: :json
    assert_response :success
  end

  test "should update tv_show" do
    patch tv_show_url(@tv_show), params: { tv_show: { TMDB_ID: @tv_show.TMDB_ID, first_air_date: @tv_show.first_air_date, genres: @tv_show.genres, name: @tv_show.name, overview: @tv_show.overview, poster_path: @tv_show.poster_path, vote_average: @tv_show.vote_average, vote_count: @tv_show.vote_count } }, as: :json
    assert_response 200
  end

  test "should destroy tv_show" do
    assert_difference('TvShow.count', -1) do
      delete tv_show_url(@tv_show), as: :json
    end

    assert_response 204
  end
end
