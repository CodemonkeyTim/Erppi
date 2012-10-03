class JobItem < ActiveRecord::Base
  attr_accessible :amount, :item_id, :price_per_unit, :unit
end
