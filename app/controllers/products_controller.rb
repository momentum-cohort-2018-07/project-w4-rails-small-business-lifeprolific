class ProductsController < ApplicationController

  def index
    categories = params.select { |key, value| value == "1" }.keys
    @product_cats = Inventory.new.product_cats(categories)
  end

  def show
    @product = Inventory.new.product(params[:id])
  end
end