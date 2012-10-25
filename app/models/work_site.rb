class WorkSite < ActiveRecord::Base
  attr_accessible :name
  
  has_many :work_packages
end
