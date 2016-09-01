# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

300.times do
  Product.create title: Faker::Commerce.product_name,
                 description: Faker::Company.bs,
                 price: Faker::Commerce.price
end

["Sports","Arts","Cats","Technology","News"].each do |cat|
  Category.create name: cat
end
