class ProductsController < ApplicationController
  def search
    @product = params[:name]
  end

  def index
    @product = params[:name]
    Product.search(@product)
  end
end
