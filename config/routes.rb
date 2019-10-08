Rails.application.routes.draw do
  root controller: :recipes, action: :index
  devise_for :users
end