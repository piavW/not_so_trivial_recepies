Rails.application.routes.draw do
  root controller: :recipes, action: :index
  resources :recipes, only: [:index]
  resources :users
  devise_for :users, controllers: {
  omniauth_callbacks: :omniauth_callbacks
}
end