Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post "login", to: "sessions#create"
      resources :tv_shows
      resources :users, only: [:show] do
        get 'unwatched_tvshows', to: 'watchlists#unwatched_tvshows'
        get 'watched_tvshows', to: 'watchlists#watched_tvshows'
      end
    end
  end
end
