class AddressSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name :street, :city, :state, :user_id

  belongs_to :user
end
