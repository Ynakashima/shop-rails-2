class Product
  attr_reader :name, :price, :retailer, :url

  def initialize(name, price, options = {})
    @name = name
    @retailer = options["retailer"]
    @priceLabel = options["priceLabel"]
    @url = options["url"]
  end

  class << self
    attr_reader :products
  end

  def self.search(search_term)
    ShopstyleproductsApiWrapper.listproducts(search_term)
  end

end
