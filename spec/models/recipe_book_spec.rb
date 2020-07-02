require 'rails_helper'

RSpec.describe RecipeBook, type: :model do
  describe "is not valid" do
    it "without a name" do
      expect(build :recipe_book, name: nil).to be_invalid
    end

    it "without a author name" do
      expect(build :recipe_book, author_name: nil).to be_invalid
    end
  end
  it "has a valid factory" do
    expect(build :recipe_book).to be_valid
  end
end