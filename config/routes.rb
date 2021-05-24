Rails.application.routes.draw do
  devise_for :user, :skip => [:registrations]
  root to: "home#index"
  resources :users
  resources :products do  
    get 'product-listing', :on => :collection
  end
end
