require 'faker'

# Create locations
100.times do
  Location.create(
    name: Faker::Address.city,
    address: Faker::Address.full_address
  )
end

# Create owners
100.times do
  Owner.create(
    name: Faker::Name.name,
    email: Faker::Internet.email
  )
end

# Create rentals
100.times do
  Rental.create(
    location: Location.order(Arel.sql('RANDOM()')).first,
    owner: Owner.order(Arel.sql('RANDOM()')).first,
    number_of_rooms: Faker::Number.between(from: 1, to: 5),
    image_link: Faker::Internet.url
  )
end
