class User < ApplicationRecord
  has_secure_password
  has_many :watchlists
  has_many :tv_shows, through: :watchlists

  # The below allows for querying user's unwatched shows
  has_many :user_unwatched_shows, -> {where show_watched: false}, class_name: "Watchlist"
  has_many :unwatched_shows, :through => :user_unwatched_shows, class_name: "TvShow",:source => :tv_show 
  
  # The below allows for querying user's watched shows
  has_many :user_watched_shows, -> {where show_watched: true}, class_name: "Watchlist"
  has_many :watched_shows, :through => :user_watched_shows, class_name: "TvShow",:source => :tv_show 
end
