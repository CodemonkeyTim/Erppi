class CreateJobItems < ActiveRecord::Migration
  def change
    create_table :job_items do |t|
      t.bigdecimal :amount
      t.integer :item_id
      t.string :unit
      t.bigdecimal :price_per_unit

      t.timestamps
    end
  end
end
