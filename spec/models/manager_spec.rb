require 'rails_helper'

RSpec.describe Manager, type: :model do
  describe "is not valid" do
    it "without a name" do
      expect(build :manager, name: nil).to be_invalid
    end
  end
  it "has a valid factory" do
    expect(build :manager).to be_valid
  end
end