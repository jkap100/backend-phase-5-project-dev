Rails.application.routes.draw do
  resources :pizza_order_toppings
  resources :pizza_orders
  resources :stores
  resources :toppings
  resources :sauces
  resources :crusts
  resources :addresses
  resources :users

  get '/meats', to: "toppings#meats"
  get '/veggies', to: "toppings#veggies"

  get 'carts', to: "pizza_orders#cart"

  post'/login', to: 'authentication#login'
  
end
