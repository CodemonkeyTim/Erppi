class CreateWorkers < ActiveRecord::Migration
  def change
    create_table :workers do |t|
      t.integer :address_id
      t.string :firstname
      t.string :lastname
      t.decimal :def_tax_percent

      t.timestamps
    end
  end
end
