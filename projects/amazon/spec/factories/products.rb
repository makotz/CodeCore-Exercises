FactoryGirl.define do
  factory :product do
    title Faker::Commerce.product_name
    description Faker::Lorem.sentence
    price Faker::Commerce.price
    sale_price Faker::Commerce.price-2
  end
end
