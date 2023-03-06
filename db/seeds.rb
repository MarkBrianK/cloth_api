# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'


require 'faker'

# Create 10 new Cloth objects
1000.times do
  cloth = Cloth.create(
    name: Faker::Commerce.product_name,
    category: Faker::Commerce.department(max: 1),
    size: Faker::Number.between(from: 1, to: 10),
    image_url: Faker::LoremFlickr.image(size: "300x300"),
    price: Faker::Commerce.price(range: 10..1000.0)
  )
  puts "Created cloth #{cloth.id}: #{cloth.name}"
end
