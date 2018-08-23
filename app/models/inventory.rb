require 'csv'
class Inventory
  CSV_FILE = "./faust_furniture/data-import/faust_inventory.csv"
  attr_reader :products

  def initialize
    @products = {}
    CSV.foreach(CSV_FILE) do |row|
      @products[row[0]] = Product.new(*row)
    end
    @products.delete('pid')
  end
end