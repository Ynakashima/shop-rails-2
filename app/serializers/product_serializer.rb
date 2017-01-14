class ProductSerializer < ActiveModel::Serializer
  attributes :id, :image, :name, :retailer, :price, :url
end
