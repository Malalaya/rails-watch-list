Rails.application.routes.draw do
  get 'lists/index'
  root 'lists#index'

  resources :lists
  resources :bookmarks
  resources :movies

  resources :lists do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: [:destroy]
end
