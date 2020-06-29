class StockQuantity < ActiveRecord::Base
  belongs_to :recipe_book
  belongs_to :book_store

  validates :amount, numericality: { only_integer: true }
  validates :cost, numericality: { only_integer: true }
end
