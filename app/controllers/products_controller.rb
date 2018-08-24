class ProductsController < ApplicationController

  def index
    @products = Inventory.new(params[:category]).products
  end

  def show
    @product = Inventory.new.products[params[:id]]
  end
end
