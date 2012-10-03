class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.integer :contact_id
      t.integer :job_id

      t.timestamps
    end
  end
end
