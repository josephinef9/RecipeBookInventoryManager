require 'rails_helper'

describe BookStore do
  before(:each) do
    jo = Manager.create!(name: "Jo", password: "password", password_digest: "password")
    @book_store = BookStore.create!(name: "Book Store", location: "123 Easy st", manager: jo)
  end

  it 'can be created' do
    expect(@book_store).to be_valid
  end
end