class CreateJobContacts < ActiveRecord::Migration
  def change
    create_table :job_contacts do |t|
      t.integer :contact_id
      t.integer :job_id
      t.string :role

      t.timestamps
    end
  end
end
