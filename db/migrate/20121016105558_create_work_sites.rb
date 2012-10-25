class CreateWorkSites < ActiveRecord::Migration
  def change
    create_table :work_sites do |t|
      t.string :name

      t.timestamps
    end
  end
end
