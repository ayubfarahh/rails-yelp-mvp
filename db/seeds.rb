# db/seeds.rb
require 'faker'

# Clear existing data
Restaurant.destroy_all

# Define valid categories
CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

# Seed restaurants
5.times do
  name = Faker::Restaurant.name
  address = Faker::Address.full_address
  category = CATEGORIES.sample

  restaurant = Restaurant.create!(
    name: name,
    address: address,
    category: category
  )

  puts "Created restaurant: #{restaurant.name}"
end
