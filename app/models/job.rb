class Job < ActiveRecord::Base
  attr_accessible :archived, :name, :address_id
  
  belongs_to :address
  
end
