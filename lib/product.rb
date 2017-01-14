class Product
  attr_reader :id, :image, :name, :price, :retailer, :url

  def initialize(id, image, name, retailer, price, url)
    @id = id
    @image = image
    @name = name
    @retailer = retailer
    @price = price
    @url = url
  end

  class << self
    attr_reader :products
  end

  def self.search(search_term)
    ShopstyleproductsApiWrapper.listproducts(search_term)
  end

end
