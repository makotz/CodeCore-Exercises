# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# 30.times do |x|
#   x = User.new first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.free_email
#   x.save
# end

30.times do |x|
  x = Product.new name: Faker::Commerce.product_name, price: Faker::Commerce.price
  x.save
end
