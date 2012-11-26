class Worker < ActiveRecord::Base
  attr_accessible :address_id, :def_tax_percent, :firstname, :lastname
  
  def name
    "#{self.firstname} #{self.lastname}"
  end
end
