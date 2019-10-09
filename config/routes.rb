Rails.application.routes.draw do
  root controller: :recipes, action: :index
  resources :recipes, only: [:index]
  devise_for :users
end