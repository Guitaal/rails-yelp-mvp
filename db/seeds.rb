# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "0123456789", category: "chinese"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "0123456789", category: "italian"}
pizza_west =  {name: "Pizza West", address: "56A Shoreditch Down St, London E1 6PQ", phone_number: "0123456789", category: "italian"}
doner_king =  {name: "Doner King", address: "12 rue de la treille, paris 8", phone_number: "0123456789", category: "french"}
doner_queen =  {name: "Doner Queen", address: "12 rue de la treille, paris 16", phone_number: "0123456789", category: "french"}

[dishoom, pizza_east, pizza_west, doner_king, doner_queen].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
