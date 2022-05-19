class ToppingSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :price, :image
end
