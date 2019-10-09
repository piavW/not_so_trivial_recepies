Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: :omniauth_callbacks
  }
  root controller: :recipes, action: :index
  resources :recipes, only: [:index]
  resources :users
end