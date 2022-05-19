Rails.application.routes.draw do
  resources :pizza_order_toppings
  resources :pizza_orders
  resources :stores
  resources :toppings
  resources :sauces
  resources :crusts
  resources :addresses
  resources :users

  post'/login', to: 'authentication#login'
  
end
