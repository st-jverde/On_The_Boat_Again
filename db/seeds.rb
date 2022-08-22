# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

puts 'clearing database'
Boat.destroy_all

puts 'Creating boats...'

12.times do
  boat = Boat.new(
    name: Faker::Games::Pokemon.name,
    description: Faker::Lorem.paragraphs.join("\n"),
    price: rand(50..150),
    user_id: 1
  )
  boat.save!
end

puts 'Boats created!'
