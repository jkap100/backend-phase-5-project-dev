class StoreSerializer < ActiveModel::Serializer
  attributes :id, :name, :street, :city, :state, :open, :close, :phone, :lat, :lng
end
