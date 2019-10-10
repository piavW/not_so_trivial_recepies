Rails.application.routes.draw do
  root controller: :recipes, action: :index
  resources :recipes, only: [:index]
  resources :charges, only: [:new, :create]
  devise_for :users
end