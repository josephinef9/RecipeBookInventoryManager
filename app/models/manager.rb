class Manager < ActiveRecord::Base
  has_many :book_stores
  has_many :recipe_books, through: :book_stores
  has_secure_password
end