Rails.application.routes.draw do
  resources :addresses
  resources :users

  post'/login', to: 'authentication#login'
  
end
