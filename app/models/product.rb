class Product
  include ActiveModel::Model
  CLEARANCES = {'good' => 0.1, 'average' => 0.2 }

  attr_reader :id, :pid, :item, :description,:price, :condition, :dimension_w,
              :dimension_l, :dimension_h, :img_file, :quantity, :category
  
  def initialize(pid, item, description, price, condition, dimension_w,
                  dimension_l, dimension_h, img_file, quantity, category)
    @id = pid
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

  def persisted?
    self.id.present?
  end

  def img
    'products/' + @img_file + '.jpg'
  end

  def clearance?
    CLEARANCES.has_key?(@condition)
  end

  def clearance_price
    @price.to_f - @price.to_f * CLEARANCES[@condition]
  end

  def clearance_amount
    CLEARANCES[@condition]
  end

end