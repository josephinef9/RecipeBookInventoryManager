class Recipe < ActiveRecord::Base
  belongs_to :recipe_book
  delegate :book_stores, to: :recipe_books
end