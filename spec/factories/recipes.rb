FactoryBot.define do
  factory :recipe do
    name { "Pie" }
    delicious_rating { 7 }
    recipe_book
  end
end