# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
3.times do
  City.create(name: Faker::Address.city)
end
5.times do
  Dogsitter.create(name: Faker::Name.name, city_id: City.all.sample.id)
end
10.times do
  Dog.create(name: Faker::Dog.name, city_id: City.all.sample.id)
end
20.times do
  Stroll.create(city_id: City.all.sample.id)
end

