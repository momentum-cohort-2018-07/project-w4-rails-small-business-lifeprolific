require 'csv'
class Inventory
  CSV_FILE = "/Users/gregtaylor/Documents/School/Momentum/Work/project-w4-rails-small-business-lifeprolific/faust_furniture/data-import/faust_inventory.csv"
  attr_reader :products

  def initialize
    @products = []
    CSV.foreach(CSV_FILE) do |row|
      @products << Product.new(*row)
    end
  end
end