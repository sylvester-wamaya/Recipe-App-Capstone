Rails.application.routes.draw do
  get 'pages/home'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "pages#home"
  resources :users, only: [:index, :show] do
    resources :recipes
    resources :foods, only: [:index, :show, :new, :create, :destroy]
  end

 
end
