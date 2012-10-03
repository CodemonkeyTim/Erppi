class JobItem < ActiveRecord::Base
  attr_accessible :amount, :item_id, :job_id, :price_per_unit, :unit
  
  belongs_to :job
  belongs_to :item
  
  
end
