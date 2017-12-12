Rails.application.routes.draw do
  #get 'static_pages/home'
  #get 'static_pages/help'
  root 'static_pages#home'

  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'


  #resources :playlist_tracks
  #resources :follows
  #resources :rates
  #resources :plays
  #resources :likes
  #resources :playlists
  #resources :album_tracks
  resources :artists, only: [:index, :show]
  resources :playlists, only: [:show]
  resources :albums, only: [:index, :show]
  resources :tracks, only: [:index, :show] do 
      member do 
          get :play
      end
  end
  #resources :albums
  #resources :tracks
  post '/users', to: 'users#create'
  resources :users  do
      member do 
          get :followers, :following, :favorite_artists, :playlists, :play_history
      end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
