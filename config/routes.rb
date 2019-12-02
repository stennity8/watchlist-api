Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post "login", to: "sessions#create"
      post "signup", to: "users#create"
      delete "logout", to: "sessions#destroy"
      get "current_user", to: "sessions#get_current_user"
      resources :tv_shows
      resources :users, only: [:show] do
        post 'add_watchlist_tvshow', to: 'tv_shows#add_watchlist_tvshow'
        get 'unwatched_tvshows', to: 'watchlists#unwatched_tvshows'
        get 'watched_tvshows', to: 'watchlists#watched_tvshows'
      end
    end
  end
end
