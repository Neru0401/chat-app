Rails.application.routes.draw do
  root to: "rooms#index"
  devise_for :users
  resources :users, only: [:edit, :update]
  resources :rooms, onry: [:new, :create]
end
