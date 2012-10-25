class WorkPackage < ActiveRecord::Base
  attr_accessible :hours, :kilometres, :work_site_id
  
  belongs_to :work_day
  belongs_to :work_site
end
