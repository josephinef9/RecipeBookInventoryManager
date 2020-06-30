require 'rails_helper'

describe RecipeBook do
  before(:each) do
    @recipe_book = RecipeBook.create!(name: "Cooking Lovers", author_name: "Jo")
  end

  it 'can be created' do
    expect(@recipe_book).to be_valid
  end
end