# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Flat.destroy_all

4.times do
  Flat.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    description: Faker::Restaurant.description,
    price_per_night: Faker::Number.decimal(l_digits: 2),
    number_of_guests: Faker::Number.within(range: 1..10)
    )
end
