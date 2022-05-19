class User < ApplicationRecord
    has_secure_password

    has_many :addresses

    has_many :pizza_orders, dependent: :destroy
    has_many :crusts, through: :pizza_orders
    has_many :sauces, through: :pizza_orders

    has_many :pizza_order_toppings, dependent: :destroy
    has_many :toppings, through: :pizza_order_toppings
    
end
