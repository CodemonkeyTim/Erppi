class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :product_no
      t.string :name
      t.string :name_cont
      t.decimal :price
      t.integer :discount1
      t.integer :discount2
      t.integer :pricing_unit

      t.timestamps
    end
  end
end
