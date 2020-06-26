class StockQuantity < ActiveRecord::Base
  belongs_to :recipe_book
  belongs_to :book_store
end