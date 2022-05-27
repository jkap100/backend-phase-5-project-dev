Rails.application.routes.draw do
  resources :pizza_order_toppings
  resources :pizza_orders
  resources :stores
  resources :toppings
  resources :sauces
  resources :crusts
  resources :addresses
  resources :users

  get "stores_by_state", to: "stores#stores_by_state"

  get '/meats', to: "toppings#meats"
  get '/veggies', to: "toppings#veggies"

  get 'carts', to: "pizza_orders#cart"
  get '/orders', to: "pizza_orders#orders"

  post'/login', to: 'authentication#login'
  
end
