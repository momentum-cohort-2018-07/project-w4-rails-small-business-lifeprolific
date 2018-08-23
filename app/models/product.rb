class Product
  attr_reader :pid, :item, :description,:price, :condition, :dimension_w,
              :dimension_l, :dimension_h, :img_file, :quantity, :category
  
  def initialize(pid, item, description, price, condition, dimension_w,
                  dimension_l, dimension_h, img_file, quantity, category)
    @pid = pid
    @item = item
    @description = description
    @price = price
    @condition = condition
    @dimension_w = dimension_w
    @dimension_l = dimension_l
    @dimension_h = dimension_h
    @img_file = img_file
    @quantity = quantity
    @category = category
  end
end