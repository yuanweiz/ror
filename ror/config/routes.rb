Rails.application.routes.draw do
  resources :follows
  resources :rates
  resources :plays
  resources :likes
  resources :playlists
  resources :album_tracks
  resources :artists
  resources :albums
  resources :tracks
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
