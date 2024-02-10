FactoryBot.define do
  factory :books do
    title { Faker::Book.title }
    author
  end
end
