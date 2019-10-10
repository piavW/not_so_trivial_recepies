Rails.application.routes.draw do
  root controller: :recipes, action: :index
  resources :recipes, only: [:index, :show]
  devise_for :users
end