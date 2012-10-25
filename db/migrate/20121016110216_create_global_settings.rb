class CreateGlobalSettings < ActiveRecord::Migration
  def change
    create_table :global_settings do |t|
      t.integer :year
      t.decimal :scl_ins

      t.timestamps
    end
  end
end
