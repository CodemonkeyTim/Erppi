class Contact < ActiveRecord::Base
  attr_accessible :address_id, :company, :email, :firstname, :is_company, :lastname, :phone
end
