# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'cleaning up database'
Product.destroy_all
puts 'database is clean'

puts 'Creating product list.'
100.times do
  Product.create(
    name: Faker::Superhero.name,
    rating: rand(2..5),
    comments: Faker::TvShows::BreakingBad.episode,
    category: Faker::Music::Hiphop.groups,
    price: rand(3..200)
  )
  puts "Product list created."
end
