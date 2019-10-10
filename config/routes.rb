Rails.application.routes.draw do
  root controller: :recipes, action: :index
  resources :recipes, only: [:index]
  resources :payments, only: [:new, :create]
  devise_for :users
end