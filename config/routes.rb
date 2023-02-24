Rails.application.routes.draw do
  get 'lists/index'
  get 'bookmarks/index'
  root 'lists#index'

  resources :lists
  resources :bookmarks
  resources :movies
end
