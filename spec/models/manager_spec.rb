require 'rails_helper'

# describe Manager do
#   before(:each) do
#     @manager = Manager.create!(name: "Jo", password: "password", password_digest: "password")
#   end

#   it 'can be created' do
#     expect(@manager).to be_valid
#   end
# end


RSpec.describe Manager, type: :model do
  it "is valid" do
    expect(build :manager).to be_valid
  end
end