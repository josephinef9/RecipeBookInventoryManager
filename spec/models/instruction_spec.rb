require 'rails_helper'

RSpec.describe Instruction, type: :model do
  it "has a valid factory" do
    expect(build :instruction).to be_valid
  end
end