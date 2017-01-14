class ProductSerializer < ActiveModel::Serializer
  attributes :id, :image, :name, :retailer, :priceLabel, :url
end
