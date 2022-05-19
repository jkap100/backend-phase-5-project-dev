class Store < ApplicationRecord

    has_many :pizza_orders, dependent: :destroy
    
end
