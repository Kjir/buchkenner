FactoryBot.define do
  factory :review do
    comment { Faker::WorldOfWarcraft.quote }
    rating { Faker::Number.between(0, 5) }
    association :book, :without_reviews
    user { create(:user) }
  end
end
