class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.integer :address_id
      t.string :firstname
      t.string :lastname
      t.string :company
      t.boolean :is_company
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
