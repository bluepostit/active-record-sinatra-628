require 'faker'

puts "Adding some restaurants..."
10.times do
  name = Faker::GreekPhilosophers.name
  address = Faker::GreekPhilosophers.quote
  Restaurant.create!(name: name, address: address)
end

puts 'Done.'
