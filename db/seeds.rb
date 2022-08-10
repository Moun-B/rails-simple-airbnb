# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Destroying all the filthies flats"
Flat.destroy_all
puts "Creating new crazy flats"
4.times do
  Flat.create!(
    name: Faker::Address.city,
    address: Faker::Address.full_address,
    description: Faker::Food.description,
    price_per_night: rand(10..100),
    number_of_guests: rand(1..8),
  )
end

puts "Finished creating #{Flat.count} flats!"
