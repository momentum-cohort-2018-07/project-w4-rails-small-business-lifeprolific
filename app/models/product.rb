class Product
  include ActiveModel::Model
  CLEARANCES = {'good' => 0.1, 'average' => 0.2 }

  attr_reader :id, :pid, :item, :description,:price, :condition, :dimension_w,
              :dimension_l, :dimension_h, :img_file, :quantity, :category
  
  def initialize(input_hash)
    @id = input_hash['pid']
    @pid = input_hash['pid']
    @item = input_hash['item']
    @description = input_hash['description']
    @price = input_hash['price']
    @condition = input_hash['condition']
    @dimension_w = input_hash['dimension_w']
    @dimension_l = input_hash['dimension_l']
    @dimension_h = input_hash['dimension_h']
    @img_file = input_hash['img_file']
    @quantity = input_hash['quantity']
    @category = input_hash['category']
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
    if clearance?
      @price.to_f - @price.to_f * CLEARANCES[@condition]
    else
      @price
    end
  end

  def clearance_amount
    CLEARANCES[@condition]
  end

end