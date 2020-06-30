require 'rails_helper'

describe BookStore do
  before(:each) do
    jo = Manager.create!(name: "Jo", password: "password", password_digest: "password")
    book_store = BookStore.create!(name: "Book Store", location: "123 Easy st", manager: jo)
    recipe_book = RecipeBook.create!(name: "Cooking Lovers", author_name: "Jo")
    @stock_quantity = StockQuantity.create!(amount: 5, cost: 25, book_store: book_store, recipe_book: recipe_book)
  end

  it 'can be created' do
    expect(@stock_quantity).to be_valid
  end
end