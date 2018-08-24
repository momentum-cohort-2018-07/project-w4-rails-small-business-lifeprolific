require 'csv'
class Inventory
  CSV_FILE = "./faust_furniture/data-import/faust_inventory.csv"
  CSV_TABLE = CSV.read(CSV_FILE, converters: :numeric, headers: true)

  attr_reader :categories

  def initialize
    @categories = CSV_TABLE['category'].uniq
  end

  def product_cats(categories)
    output = {}
    categories.each { |category| output[category] = []}
    CSV_TABLE.select{ |row| categories.include?(row['category']) }.each do |row|
      output[row['category']] << Product.new(row.to_hash)
    end
    output
  end

  def product(pid)
    row = CSV_TABLE.find{ |row| row['pid'] == pid.to_i}
    if row.class != nil
      Product.new(row.to_hash)
    end
  end

end