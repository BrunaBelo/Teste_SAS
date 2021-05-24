Rails.application.routes.draw do
  devise_for :user, :skip => [:registrations]
  root to: "home#index"
  
  resources :users, only: [:index, :new, :create]
  resources :roles, only: [:index, :new, :create]
  resources :products
end
