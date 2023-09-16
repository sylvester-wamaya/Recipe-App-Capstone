Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :recipes
  resources :foods
  resources :recipe_foods
  resources :users
  resources :public_recipes
  get "/general_shopping_list", to: "recipes#generate_shopping", as: :generate_shopping
  # Defines the root path route ("/")
   root "recipes#index"
   get '/unauthorized', to: 'unauthorized#index'
end
