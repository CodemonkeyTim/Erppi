class Address < ActiveRecord::Base
  attr_accessible :city, :street, :zip
  
  has_many :jobs
end
