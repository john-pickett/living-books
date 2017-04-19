require 'wiki_details'

# Create Users
10.times do
  User.create!(
  email: Faker::Internet.email,
  password: Faker::Number.number(8)
  )
end
users = User.all

# Create Wikis
50.times do
  Wiki.create!(
  name: Faker::StarWars.character,
  body: Faker::StarWars.quote,
  user: users.sample,
  category: WikiDetails.wiki_category
  )
end
wikis = Wiki.all



# Update first user to me
user = User.first
user.update_attributes!(
  email: "john.pickett@gmail.com",
  password: "password"
)

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Wiki.count} wikis created"