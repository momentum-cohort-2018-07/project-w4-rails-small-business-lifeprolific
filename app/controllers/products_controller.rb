class ProductsController < ApplicationController

  def index
    @product_cats = Inventory.new.product_cats(['bedroom', 'storage'])
  end

  def show
    @product = Inventory.new.product(params[:id])
  end
end