require "faker"

puts "Destroy all seeds"
Purchase.destroy_all
User.destroy_all

puts "Starting seeding process"

10.times do
 puts "Creating Users"
 user = User.create!(email: Faker::Internet.email, password: 123456789, first_name: Faker::Internet.name, last_name: Faker::FunnyName.name)
 2.times do
  puts "Creating Purchase"
  Purchase.create!(user: user, material: Faker::Beer.brand, provaider: Faker::Company.name, quantity: 100, price: 10, date: Faker::Date.between(from: '2019-09-23', to: '2020-09-25'))
 end
end

puts "Finished seeding!"

