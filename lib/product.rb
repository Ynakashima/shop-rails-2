class Product
  attr_reader :name, :price, :retailer, :url

  def initialize(name, retailer, priceLabel)
    @name = name
    @retailer = retailer
    @priceLabel = priceLabel
    # @url = options[:url]
  end

  class << self
    attr_reader :products
  end

  def self.search(search_term)
    ShopstyleproductsApiWrapper.listproducts(search_term)
  end

end
