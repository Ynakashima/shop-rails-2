class ProductSerializer < ActiveModel::Serializer
  attributes :id, :image, :name, :price, :retailer, :url
end
