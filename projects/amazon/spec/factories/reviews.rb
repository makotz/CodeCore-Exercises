FactoryGirl.define do
  factory :review do
    start_count Faker::Number.between(1, 5)
    body Faker::Lorem.sentence
    end
  end
