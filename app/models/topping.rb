class Topping < ApplicationRecord

    has_many :pizza_order_toppings, dependent: :destroy
    has_many :pizza_orders, through: :pizza_order_toppings
    
end
