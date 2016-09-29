Rails.application.routes.draw do

  resources :password_requests, only: [:new, :index, :create]

  devise_for :users
  root to: "static#index"

end
