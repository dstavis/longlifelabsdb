# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

n = 1
while n < 20 do
  Paper.create(title: Faker::Name.name)#, abstract: Faker::StarWars.quote, commentary: Faker::ChuckNorris.fact)
  n = n + 1
end
