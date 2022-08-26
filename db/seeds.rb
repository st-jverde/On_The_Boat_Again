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

# 12.times do
#   boat = Boat.new(
#     name: Faker::Games::Pokemon.name,
#     description: Faker::Lorem.paragraphs.join("\n"),
#     number_of_people: rand(5..15),
#     price: rand(50..150),
#     user_id: 1
#   )
#   file = URI.open("https://source.unsplash.com/random/900x700/?boat")
#   file2 = URI.open("https://source.unsplash.com/random/900x700/?boat")
#   file3 = URI.open("https://source.unsplash.com/random/900x700/?boat")
#   boat.photos.attach(io: file, filename: "boat.png", content_type: "image/png")
#   boat.photos.attach(io: file2, filename: "boat.png", content_type: "image/png")
#   boat.photos.attach(io: file3, filename: "boat.png", content_type: "image/png")
#   boat.save!
# end

boat1 = Boat.new(
  name: "Love me do",
  description: "Rent, rent me do, You know I love you I'll always be true So please, love me do Whoa, love me do
  Love, love me do You know I love you I'll always be true So please, love me do Whoa, love me do
  Someone to love Somebody new Someone to love Someone like you
  Love, love me do You know I love you I'll always be true So please, love me do Whoa, love me do",
  number_of_people: 4,
  price: 200,
  address: "Prinsengracht, 25, Amsterdam",
  user_id: 1
)
file = URI.open("app/assets/images/boatpics/ronni-kurtz-HHyiPQsXf78-unsplash.jpg")
file2 = URI.open("app/assets/images/boatpics/sandra-molina--s1wwmulL4E-unsplash.jpg")
file3 = URI.open("app/assets/images/boatpics/pexels-nikolaos-dimou-1416649.jpg")
boat1.photos.attach(io: file, filename: "boat.png", content_type: "image/png")
boat1.photos.attach(io: file2, filename: "boat.png", content_type: "image/png")
boat1.photos.attach(io: file3, filename: "boat.png", content_type: "image/png")
boat1.save!

boat2 = Boat.new(
  name: "Twist and shout",
  description: "Well, shake it up, baby, now (Shake it up), baby, Twist and shout (Twist and shout) C'mon c'mon, c'mon,
  Come on and work it on out (Work it on out) Well, work it on out, honey (Work it on out) You know you look so good
  (Look so good) You know you got me goin' now (Got me goin') Just like I knew you would (Like I knew you would)
  Well, shake it up, baby, now (Shake it up, baby) Twist and shout (Twist and shout) C'mon, c'mon, c'mon, c'mon, baby,
  now (Come on, baby) Come on and work it on out (Work it on out)
  Well, you twist, you little girl (Twist, little girl) You know you twist so fine (Twist so fine) Come on and twist a
  little closer now (Twist a little closer) And let me know that you're mine (Let me know you're mine)",
  number_of_people: 8,
  price: 90,
  address: "Keizergracht, 15, Amsterdam",
  user_id: 1
)
file4 = URI.open("app/assets/images/boatpics/pedro-cunha-UnOA1y2b_pc-unsplash.jpg")
file5 = URI.open("app/assets/images/boatpics/pexels-hamzeh-omari-7301512.jpg")
file6 = URI.open("app/assets/images/boatpics/pexels-lachlan-ross-6510293.jpg")
boat2.photos.attach(io: file4, filename: "boat.png", content_type: "image/png")
boat2.photos.attach(io: file5, filename: "boat.png", content_type: "image/png")
boat2.photos.attach(io: file6, filename: "boat.png", content_type: "image/png")
boat2.save!

boat3 = Boat.new(
  name: "Mr. Moonlight",
  description: "Mr. Moonlight You came to me one summer night And from your beam you made my dream And from the world you
  sent my girl And from above you sent us love And now she is mine I think you're fine Cos we love you, Mr. Moonlight
  Mr. Moonlight, come again please  Here I am on my knees Begging if you please  And the night you don't come my way
  I'll pray and pray more each day Cos we love you, Mr. Moonlight
  And the night you don't come my wayOh, I'll pray and pray more each dayCos we love you, Mr. MoonlightMr. Moonlight
  Mr. Moonlight, come again pleaseHere I am on my kneesBegging if you pleaseAnd the night you don't come my wayI'll
  pray and pray more each dayCos we love you, Mr. Moonlight",
  number_of_people: 10,
  price: 130,
  address: "Herengracht, 5, Amsterdam",
  user_id: 1
)
file7 = URI.open("app/assets/images/boatpics/djurre-stoove-n2L58DfLAz0-unsplash.jpg")
file8 = URI.open("app/assets/images/boatpics/pexels-gabriel-guita-4456988.jpg")
file9 = URI.open("app/assets/images/boatpics/pexels-gotta-be-worth-it-5215215.jpg")
file10 = URI.open("app/assets/images/boatpics/pexels-roman-odintsov-8356410.jpg")
boat3.photos.attach(io: file7, filename: "boat.png", content_type: "image/png")
boat3.photos.attach(io: file8, filename: "boat.png", content_type: "image/png")
boat3.photos.attach(io: file9, filename: "boat.png", content_type: "image/png")
boat3.photos.attach(io: file10, filename: "boat.png", content_type: "image/png")
boat3.save!

boat4 = Boat.new(
  name: "Dizzy Miss Lizzy",
  description: "You make me dizzy, Miss Lizzy The way you rock and roll You make me dizzy, Miss Lizzy When we do the
  stroll Come on, Miss Lizzy Love me before I grow too old
  Come on, give me fever Put your little hand in mine You make me dizzy, dizzy Lizzy
  Oh girl, you look so fine Just a-rocking and a-rolling Girl I said I wish you were mine
  You make me dizzy, Miss Lizzy When you call my name Oooooh baby Say you're driving me
  insane C'mon, c'mon, c'mon, c'mon baby I want to be your lover man
  Run and tell your mama I want you to be my bride Run and tell your brother Baby, don't
  run and hide You make me dizzy, Miss Lizzy Girl I want to marry you
  Come on, give me fever Put your little hand in mine, girl You make me dizzy, dizzy Lizzy
  Girl, you look so fine You're just a-rocking and a-rolling Oh I said I wish you were mine",
  number_of_people: 5,
  address: "Bloemgracht, 35, Amsterdam",
  price: 65,
  user_id: 1
)
file11 = URI.open("app/assets/images/boatpics/pexels-vlada-karpovich-4449435.jpg")
file12 = URI.open("app/assets/images/boatpics/redcharlie-byOGQyiB-Ek-unsplash.jpg")
file13 = URI.open("app/assets/images/boatpics/pexels-nikolaos-dimou-1416649.jpg")
boat4.photos.attach(io: file11, filename: "boat.png", content_type: "image/png")
boat4.photos.attach(io: file12, filename: "boat.png", content_type: "image/png")
boat4.photos.attach(io: file13, filename: "boat.png", content_type: "image/png")
boat4.save!

boat5 = Boat.new(
  name: "Another Girl",
  description: "Love, love me do",
  number_of_people: 7,
  price: 125,
  user_id: 1
)
file14 = URI.open("app/assets/images/boatpics/abinash-satapathy-DEJHnZ8ICGQ-unsplash.jpg")
boat5.photos.attach(io: file14, filename: "boat.png", content_type: "image/png")
boat5.save!

boat6 = Boat.new(
  name: "Ticket to Ride",
  description: "Love, love me do",
  number_of_people: 10,
  price: 160,
  user_id: 1
)
file14 = URI.open("app/assets/images/boatpics/alp-ancel-nrpUVEZbBo8-unsplash.jpg")
boat6.photos.attach(io: file14, filename: "boat.png", content_type: "image/png")
boat6.save!

boat7 = Boat.new(
  name: "Yellow Submarine",
  description: "Love, love me do",
  number_of_people: 12,
  price: 100,
  user_id: 1
)
file15 = URI.open("app/assets/images/boatpics/dim-hou-M2I7B9vHUtE-unsplash.jpg")
boat7.photos.attach(io: file15, filename: "boat.png", content_type: "image/png")
boat7.save!

boat8 = Boat.new(
  name: "It's Only Love",
  description: "Love, love me do",
  number_of_people: 14,
  price: 170,
  user_id: 1
)
file16 = URI.open("app/assets/images/boatpics/alfred-lutz-LK-j2sXGqZ4-unsplash.jpg")
boat8.photos.attach(io: file16, filename: "boat.png", content_type: "image/png")
boat8.save!

boat9 = Boat.new(
  name: "I Am The Walrus",
  description: "Love, love me do",
  number_of_people: 6,
  price: 80,
  user_id: 1
)
file17 = URI.open("app/assets/images/boatpics/jan-gemerle-RG-12qdIW8w-unsplash.jpg")
boat9.photos.attach(io: file17, filename: "boat.png", content_type: "image/png")
boat9.save!

boat10 = Boat.new(
  name: "Wild Honey Pie",
  description: "Love, love me do",
  number_of_people: 15,
  price: 250,
  user_id: 1
)
file18 = URI.open("app/assets/images/boatpics/jose-llamas-8iZJIqzPgww-unsplash.jpg")
boat10.photos.attach(io: file18, filename: "boat.png", content_type: "image/png")
boat10.save!

boat11 = Boat.new(
  name: "Penny Lane",
  description: "Love, love me do",
  number_of_people: 16,
  price: 300,
  user_id: 1
)
file19 = URI.open("app/assets/images/boatpics/pexels-kata-pal-1258865.jpg")
boat11.photos.attach(io: file19, filename: "boat.png", content_type: "image/png")
boat11.save!

boat12 = Boat.new(
  name: "Rocky Racoon",
  description: "Love, love me do",
  number_of_people: 4,
  price: 50,
  user_id: 1
)
file20 = URI.open("app/assets/images/boatpics/robin-ooode-Cm_X0flJL74-unsplash.jpg")
boat12.photos.attach(io: file20, filename: "boat.png", content_type: "image/png")
boat12.save!

boat13 = Boat.new(
  name: "Helter Skelter",
  description: "Love, love me do",
  number_of_people: 9,
  price: 110,
  user_id: 1
)
file20 = URI.open("app/assets/images/boatpics/tobias-kordt-c_p0GM-QCDE-unsplash.jpg")
boat13.photos.attach(io: file20, filename: "boat.png", content_type: "image/png")
boat13.save!

boat14 = Boat.new(
  name: "Come together",
  description: "Love, love me do",
  number_of_people: 20,
  price: 450,
  user_id: 1
)
file22 = URI.open("app/assets/images/boatpics/precious-madubuike-a5EqXgVEe08-unsplash.jpg")
boat14.photos.attach(io: file22, filename: "boat.png", content_type: "image/png")
boat14.save!

boat15 = Boat.new(
  name: "Blue Jay Way",
  description: "Love, love me do",
  number_of_people: 13,
  price: 180,
  user_id: 1
)
file23 = URI.open("app/assets/images/boatpics/gijs-coolen-eYLFB672iTQ-unsplash.jpg")
boat15.photos.attach(io: file23, filename: "boat.png", content_type: "image/png")
boat15.save!

boat16 = Boat.new(
  name: "Mean Mr. Mustard",
  description: "Love, love me do",
  number_of_people: 1,
  price: 50,
  user_id: 1
)
file24 = URI.open("app/assets/images/boatpics/jan-gemerle-RG-12qdIW8w-unsplash.jpg")
boat16.photos.attach(io: file24, filename: "boat.png", content_type: "image/png")
boat16.save!

puts 'Boats created!'
