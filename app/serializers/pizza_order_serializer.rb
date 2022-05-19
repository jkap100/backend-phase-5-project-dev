class PizzaOrderSerializer < ActiveModel::Serializer
  attributes :id, :due_date, :due_time, :status, :quantity, :image
  has_one :user
  has_one :address
  has_one :store
  has_one :crust
  has_one :sauce

  has_many :pizza_order_toppings
end
