# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
require "open-uri"

puts 'Clearing database ✨ ...'
Boat.destroy_all

puts 'Fetching the wood, building the boats 🛥️ ...'

12.times do
  boat = Boat.new(
    name: Faker::Games::Pokemon.name,
    description: Faker::Lorem.paragraphs.join("\n"),
    number_of_people: rand(5..15),
    price: rand(50..150),
    user_id: 1
  )
  file = URI.open("https://source.unsplash.com/random/900x700/?boat")
  file2 = URI.open("https://source.unsplash.com/random/900x700/?boat")
  file3 = URI.open("https://source.unsplash.com/random/900x700/?boat")
  boat.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
  boat.photos.attach(io: file2, filename: "nes.png", content_type: "image/png")
  boat.photos.attach(io: file3, filename: "nes.png", content_type: "image/png")
  boat.save!
end


puts 'Boats created!'
