Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "static#welcome"

  resources :managers
  resources :recipes
  resources :recipe_books
  resources :book_stores
  resources :stock_quantities

  get "/signin", to: "sessions#new"
  post "/signin", to: "sessions#create"

  get "/logout", to: "sessions#destroy"
end
