class ProductsController < ApplicationController
  # def search
  #   @product = params[:name]
  # end

  def index
    @product = params[:name]
    puts @product
    product = Product.search(@product)
    puts product
    render json: product
  end
end
