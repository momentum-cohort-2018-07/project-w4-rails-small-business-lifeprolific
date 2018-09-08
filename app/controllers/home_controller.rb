class HomeController < ApplicationController
  def index
    @categories = Inventory.new.categories
  end
end
