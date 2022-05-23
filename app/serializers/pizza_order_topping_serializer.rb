class PizzaOrderToppingSerializer < ActiveModel::Serializer
  attributes :topping
  has_one :pizza_order
  has_one :topping

  def topping
    object.topping.name
  end
end
