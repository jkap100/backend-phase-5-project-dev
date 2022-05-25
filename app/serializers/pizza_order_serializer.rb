class PizzaOrderSerializer < ActiveModel::Serializer
  attributes :id, :user, :first_name, :last_name, :store_name, :store_address, :due_date, :crust, :sauce, :due_date, :due_time, :status, :quantity, :price, :street, :city, :state, :zip, :order_type, :card_number, :ccv, :card_expiration, :card_zip


  def user
    object.user.username
  end

  def store_name
    object.store.name
  end

  def store_address
    object.store.street
  end

  def crust
    object.crust.name
  end

  def sauce
    object.sauce.name
  end


  def price
    object.quantity*(object.pizza_order_toppings.count*1.5+10)
  end
  # has_one :user
  # has_one :store
  # has_one :crust
  # has_one :sauce

  has_many :pizza_order_toppings
end
