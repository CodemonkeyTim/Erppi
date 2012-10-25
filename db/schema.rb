# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121016110216) do

  create_table "addresses", :force => true do |t|
    t.string   "street"
    t.string   "city"
    t.string   "zip"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "contacts", :force => true do |t|
    t.integer  "address_id"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "company"
    t.boolean  "is_company"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "global_settings", :force => true do |t|
    t.integer  "year"
    t.decimal  "scl_ins",    :precision => 10, :scale => 0
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  create_table "invoices", :force => true do |t|
    t.integer  "contact_id"
    t.integer  "job_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "items", :force => true do |t|
    t.string   "product_no"
    t.string   "name"
    t.string   "name_cont"
    t.decimal  "price",               :precision => 10, :scale => 0
    t.integer  "discount1"
    t.integer  "discount2"
    t.integer  "pricing_unit"
    t.string   "unit_of_measurement"
    t.datetime "created_at",                                         :null => false
    t.datetime "updated_at",                                         :null => false
  end

  create_table "job_contacts", :force => true do |t|
    t.integer  "contact_id"
    t.integer  "job_id"
    t.string   "role"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "job_items", :force => true do |t|
    t.decimal  "amount",         :precision => 10, :scale => 0
    t.integer  "item_id"
    t.integer  "job_id"
    t.decimal  "price_per_unit", :precision => 10, :scale => 0
    t.string   "unit"
    t.datetime "created_at",                                    :null => false
    t.datetime "updated_at",                                    :null => false
  end

  create_table "job_workers", :force => true do |t|
    t.integer  "job_id"
    t.integer  "worker_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "jobs", :force => true do |t|
    t.integer  "address_id"
    t.string   "name"
    t.boolean  "archived",   :default => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "role"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "work_days", :force => true do |t|
    t.date     "date"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "work_hours", :force => true do |t|
    t.datetime "start"
    t.datetime "end"
    t.integer  "lunch"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "work_packages", :force => true do |t|
    t.decimal  "hours",        :precision => 10, :scale => 0
    t.integer  "kilometres"
    t.integer  "work_site_id"
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
  end

  create_table "work_sites", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "workers", :force => true do |t|
    t.integer  "address_id"
    t.string   "firstname"
    t.string   "lastname"
    t.decimal  "def_tax_percent", :precision => 10, :scale => 0
    t.datetime "created_at",                                     :null => false
    t.datetime "updated_at",                                     :null => false
  end

end
