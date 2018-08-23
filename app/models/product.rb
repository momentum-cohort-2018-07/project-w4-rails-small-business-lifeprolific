class Product
  include ActiveModel::Model
  attr_reader :pid, :item, :description, :price, :condition, :dimension_w, :dimension_l, :dimension_h, :img_file, :quantity, :category
end