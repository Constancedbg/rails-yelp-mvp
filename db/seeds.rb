# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: 'japanese'}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: 'italian'}
resto3 = {name: 'Signature', address: '345 rue du rouet', phone_number: '0464789836', category: 'french'}
resto4 = {name: 'Fonfon', address: 'Vallon des auffes', phone_number: '0693678393', category: 'chinese'}
resto5 = {name: 'Nul part ailleurs', address: '78 quai des belges', phone_number: '+33 6 78 35 56 37', category: 'italian'}
resto6 = {name: 'La fiancee', address: '32 rue Haxo', phone_number: '+33 453637384', category: 'french'}
resto7 = {name: 'Le wagon', address: '21 rue Haxo', phone_number: "06936783543", category: "belgian"}

[dishoom, pizza_east, resto3, resto4, resto5, resto6, resto7].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
