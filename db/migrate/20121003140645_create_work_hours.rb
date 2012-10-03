class CreateWorkHours < ActiveRecord::Migration
  def change
    create_table :work_hours do |t|
      t.datetime :start
      t.datetime :end
      t.integer :lunch

      t.timestamps
    end
  end
end
