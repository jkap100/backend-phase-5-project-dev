class AddressSerializer < ActiveModel::Serializer
  attributes :id, :street, :city, :state, :user_id

  belongs_to :user
end
