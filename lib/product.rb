class Product
  attr_reader :id, :image, :name, :priceLabel, :retailer, :url

  def initialize(id, image, name, retailer, priceLabel, url)
    @id = id
    @image = image
    @name = name
    @retailer = retailer
    @priceLabel = priceLabel
    @url = url
  end

  class << self
    attr_reader :products
  end

  def self.search(search_term)
    ShopstyleproductsApiWrapper.listproducts(search_term)
  end

end
