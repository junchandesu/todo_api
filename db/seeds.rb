# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'

# User
10.times do
	user = User.new(
		first: Faker::Name.name,
		last: Faker::Name.name,
		email: Faker::Internet.email,
		password: Faker::Internet.password(8)
	)
	user.save!
end
users = User.all

# List
20.times do
  list = List.new(
   title: Faker::Hacker.verb,
   user: users.sample
  )
  list.save!
end
lists = List.all

# Item
40.times do
  item = Item.new(
    todo: Faker::Team.creature,
    body: Faker::Lorem.sentence,
    list: lists.sample
  )
  item.save!
end


puts "#{User.count} users created"
puts "#{List.count} lists created"
puts "#{Item.count} items created"