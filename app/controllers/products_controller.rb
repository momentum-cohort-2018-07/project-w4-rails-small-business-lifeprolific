class ProductsController < ApplicationController

  def index
    @products = Inventory.new.products(['bedroom', 'storage'])
  end

  def show
    @product = Inventory.new.product(params[:id])
  end
end