require 'rails_helper'

RSpec.describe Recipe, type: :model do
  describe "is not valid" do
    it "without a name" do
      expect(build :recipe, name: nil).to be_invalid
    end

    it "without a delicious_rating" do
      expect(build :recipe, delicious_rating: nil).to be_invalid
    end
  end
  it "has a valid factory" do
    expect(build :recipe).to be_valid
  end
end