class HomeController < ApplicationController
  def index
    @inventory = Inventory.new
  end
end
