Rails.application.routes.draw do
  root controller: :recipes, action: :index
  resources :recipes, only: [:index]
  resources :charges, only: [:index, :new, :create]
  devise_for :users
end