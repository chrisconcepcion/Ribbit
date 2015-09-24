# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
 user1 = User.new(username: "MadCow", email: "madcow999@gmail.com", name: "mad cow", password: "cool", password_confirmation: "cool").save
user2 =  User.new(username: "MadCat", email: "madcat999@gmail.com", name: "mad cat", password: "cool", password_confirmation: "cool").save
 user3 = User.new(username: "MadRat", email: "madcrat99@gmail.com", name: "mad rat", password: "cool", password_confirmation: "cool").save

