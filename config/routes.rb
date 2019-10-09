Rails.application.routes.draw do
  root controller: :recipes, action: :index
  resources :recipes
  devise_for :users
end