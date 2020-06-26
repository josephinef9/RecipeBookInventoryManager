class BookStore < ActiveRecord::Base
  belongs_to :manager
  has_many :stock_quantities
  has_many :recipe_books, through: :stock_quantities
end