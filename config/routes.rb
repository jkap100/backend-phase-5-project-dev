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

  post'/login', to: 'authentication#login'
  
end
