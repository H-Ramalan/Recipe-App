Rails.application.routes.draw do
  devise_for :users
  root to: 'foods#index'
  resources :recipe_foods
  resources :recipes, only: [:index]
  resources :foods
  # resources :users

  resources :general_shopping_list, only: [:index]

  resources :recipes, only: [:index, :create, :new, :show, :destroy] do
    resources :recipe_foods, only: [:index, :new, :create, :edit, :update]
  end
  resources :foods, only: [:index, :show, :new, :create, :destroy]
  resources :public_recipes, only: [:index]
  resources :general_shopping_list, only: [:index]

  resources :recipes do
    resources :recipe_foods
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
end
