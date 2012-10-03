class Item < ActiveRecord::Base
  attr_accessible :discount1, :discount2, :name, :name_cont, :price, :pricing_unit, :product_no, :unit_of_measurement
  
  has_many :job_items
  
end
