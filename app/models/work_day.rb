class WorkDay < ActiveRecord::Base
  attr_accessible :date
  
  has_many :work_packages
end
