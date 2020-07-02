require 'rails_helper'

RSpec.describe StockQuantity, type: :model do
  describe "is not valid" do
    it "without amount integer" do
      expect(build :stock_quantity, amount: "hi").to be_invalid
    end

    it "without cost integer" do
      expect(build :stock_quantity, cost: "hello").to be_invalid
    end
  end
  it "has a valid factory" do
    expect(build :stock_quantity).to be_valid
  end
end