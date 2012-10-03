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
