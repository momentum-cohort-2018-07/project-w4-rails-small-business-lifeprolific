require 'csv'
class Inventory
  CSV_FILE = "./faust_furniture/data-import/faust_inventory.csv"
  attr_reader :products

  def initialize(category = 'all')
    @products = {}
    CSV.foreach(CSV_FILE) do |row|
      if category == 'all'
        @products[row[0]] = Product.new(*row)
      elsif category == row[10]
        @products[row[0]] = Product.new(*row)
      end
    end
    @products.delete('pid')
  end
end