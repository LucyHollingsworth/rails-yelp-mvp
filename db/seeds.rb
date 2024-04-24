# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
casse_croute = {name: 'Casse Croûte', category: 'french', address: '109 Bermondsey St', phone_number: '020 7407 2140'}
golden_lion = {name: 'Golden Lion', category: 'chinese', address: '167 Grange Rd', phone_number: '020 7590 2337'}
ivans_bar = {name: 'Ivans Bar', category: 'japanese', address: '5 Riverside Rd', phone_number: '01752 872 007'}
poirots = {name: 'Poirots', category: 'belgian', address: 'Whitehaven Mansions', phone_number: '020 7309 1999'}
sugo = {name: 'Sugo', category: 'italian', address: 'Vinegar Yard', phone_number: '020 7658 2877'}

[casse_croute, golden_lion, ivans_bar, poirots, sugo].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
