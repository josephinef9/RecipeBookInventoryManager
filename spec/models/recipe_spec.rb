require 'rails_helper'

# describe RecipeBook do
#   before(:each) do
#     recipe_book = RecipeBook.create!(name: "Cooking Lovers", author_name: "Jo")
#     @recipe = Recipe.create!(name: "BlueBerry Pie", delicious_rating: 8, recipe_book: recipe_book)
#   end

#   it 'can be created' do
#     expect(@recipe).to be_valid
#   end
# end

RSpec.describe Recipe, type: :model do
  it "is valid" do
    expect(build :recipe).to be_valid
  end
end