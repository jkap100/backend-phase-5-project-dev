class PizzaOrderSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :store_id, :due_date, :crust_id, :sauce_id, :due_date, :due_time, :status, :quantity, :first_name, :last_name, :street, :city, :state, :zip

  has_one :user
  has_one :store
  has_one :crust
  has_one :sauce

  has_many :pizza_order_toppings
end
