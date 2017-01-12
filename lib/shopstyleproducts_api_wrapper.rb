require 'httparty'

class ShopstyleproductsApiWrapper
  BASE_URL = "http://api.shopstyle.com/api/v2/products?pid="
  ID = ENV["api_key"]
  LAST = 1000

  def self.listproducts(search_term)
    url = BASE_URL + ID + "&fts=#{search_term}"
    data = HTTParty.get(url)
    product_list = []

    if data["products"]
      data["products"].each do |product|
        info = { url: product["clickUrl"] }

        wrapper = Product.new(product["name"], product["retailer"]["name"], product["priceLabel"])

        product_list << wrapper
      end
    end
    return product_list
  end

end
