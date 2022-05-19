class PizzaOrderToppingSerializer < ActiveModel::Serializer
  attributes :id
  has_one :pizza_order
  has_one :topping
end
