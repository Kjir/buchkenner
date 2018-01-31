FactoryBot.define do
  factory :book do
    title { Faker::Book.title }
    author { Faker::Book.author }
    isbn { Faker::Number.number(10) }
    user { create(:user) }
    reviews { create_list(:review, (5..10).to_a.sample)}
    trait(:without_reviews) do
      reviews { [] }
    end
  end
end
