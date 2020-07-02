require 'rails_helper'

RSpec.describe BookStore, type: :model do
  describe "is not valid" do
    it "without a name" do
      expect(build :book_store, name: nil).to be_invalid
    end

    it "without a location" do
      expect(build :book_store, location: nil).to be_invalid
    end
  end

  it "has a valid factory" do
    expect(build :book_store).to be_valid
  end
end