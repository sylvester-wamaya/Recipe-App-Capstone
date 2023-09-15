Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :recipes
  resources :foods
  # Defines the root path route ("/")

  
  resources :users
    resources :recipes
    resources :foods
   root "foods#index"

end
