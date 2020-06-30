FactoryBot.define do
  factory :stock_quantity do
    amount { 5 }
    cost { 15 }
    book_store
    recipe_book
  end
end