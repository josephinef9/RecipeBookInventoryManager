class Recipe < ActiveRecord::Base
  belongs_to :recipe_book
  has_many :book_stores, through: :recipe_books
end