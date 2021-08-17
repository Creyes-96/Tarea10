# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#car.create(model: 7, brand: 'Tesla_seed', driver_id: 77)

#load(Rails.root.join( 'db', 'seed', "development.rb"))
#load(Rails.root.join( 'db', 'seed', "test.rb"))

load(Rails.root.join( 'db', 'seed', "#{Rails.env.downcase}.rb"))


