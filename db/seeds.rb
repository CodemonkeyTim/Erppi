# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Job.create(name: "Talo Latvala", address_id: 1)
Job.create(name: "Stemet Oy Laajennus", address_id: 2)
Address.create(street: "Kolkankatu 2", zip: "15150", city: "Lahti")
Address.create(street: "Laatukatu 8", zip: "15680", city: "Lahti")

User.create(email: "testi@testi.com", password: "kotimaa", password_confirmation: "kotimaa", role: "admin")
User.create(email: "duunari@testi.com", password: "hikinen", password_confirmation: "hikinen", role: "worker")

Item.create(product_no: "0124432", name: "MMJ 3x1.5 DRAKA", price: 1.90, pricing_unit: 1, unit_of_measurement: "m")
Item.create(product_no: "0123435", name: "2.5 ML RUSKEA", price: 1.2, pricing_unit: 1, unit_of_measurement: "m")

JobItem.create(amount: 95, item_id: 1, job_id: 1, price_per_unit: 1.80)
JobItem.create(amount: 120, item_id: 2, job_id: 1, price_per_unit: 1.10)
