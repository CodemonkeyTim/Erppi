class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.integer :address_id
      t.string :name
      t.boolean :archived, :default => false 

      t.timestamps
    end
  end
end
