Rails.application.routes.draw do

  resources :password_requests, only: [:new, :index, :create] do
    member do
      get :approve
      get :decline
    end
  end

  devise_for :users
  root to: "static#index"

end
