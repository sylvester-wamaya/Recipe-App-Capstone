Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :recipes
  resources :foods
  resources :recipe_foods
  # Defines the root path route ("/")
   root "recipe_foods#index"
end
