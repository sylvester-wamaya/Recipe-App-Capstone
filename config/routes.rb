Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :recipes
  resources :foods
  resources :recipe_foods
  resources :users

    resources :recipes
    resources :foods
   root "foods#index"
   get '/general_shopping_list', to: 'foods#general_shopping_list'


end
