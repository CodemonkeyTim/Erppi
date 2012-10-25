class CreateWorkPackages < ActiveRecord::Migration
  def change
    create_table :work_packages do |t|
      t.decimal :hours
      t.integer :kilometres
      t.integer :work_site_id

      t.timestamps
    end
  end
end
