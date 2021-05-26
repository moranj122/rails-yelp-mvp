# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: '0774563543', category: "belgian" }
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: '0774563543', category: "french"}
mcdonalds = { name: "McDonalds", address: "Battersea, London SW12", phone_number: '0774563543', category: "chinese" }
breakfast_club = { name: "Breakfast Club", address: "Clapham, London SW6", phone_number: '0774563543', category: "belgian" }
pho =  { name: "Pho", address: "Brixton, SW8", phone_number: '0774563543', category: "japanese" }
kfc =  { name: "KFC", address: "Tooting, London SW14", phone_number: '0774563543', category: "italian" }

[dishoom, pizza_east, mcdonalds, breakfast_club, pho, kfc].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
