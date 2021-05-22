Rails.application.routes.draw do
  devise_for :user
  root to: "home#index"
  
  resources :users
  resources :roles
end
