class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :name
      t.boolean :archived

      t.timestamps
    end
  end
end
