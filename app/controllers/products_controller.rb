class ProductsController < ApplicationController
  # def search
  #   @product = params[:name]
  # end

  def index
    @product = params[:name]
      if params[:name] == nil
        puts "Please enter search term"
      end
    puts @product
    product = Product.search(@product)
    puts product
    render json: product
  end
end
