class PizzaOrder < ApplicationRecord
  belongs_to :user
  belongs_to :address
  belongs_to :store
  belongs_to :crust
  belongs_to :sauce

  has_many :pizza_order_toppings, dependent: :destroy
  has_many :toppings, through: :pizza_order_toppings
end
