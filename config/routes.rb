Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "static#welcome"

  resources :managers, only: [:new, :create, :show]
  resources :recipes, only: [:index]
  resources :recipe_books, only: [:index]

  resources :book_stores, only: [:new, :create, :show, :index, :destroy] do
    resources :stock_quantities, only: [:new, :create, :index]
  end


  get "/signin", to: "sessions#new"
  post "/signin", to: "sessions#create"

  get "/logout", to: "sessions#destroy"
end
