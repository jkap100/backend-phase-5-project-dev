class Crust < ApplicationRecord

    has_many :pizza_orders, dependent: :destroy
    has_many :users, through: :pizza_orders
end
