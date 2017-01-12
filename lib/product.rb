class Product
  attr_reader :image, :name, :price, :retailer, :url

  def initialize(image, name, retailer, priceLabel, url)
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
