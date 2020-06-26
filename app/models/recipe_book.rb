class RecipeBook < ActiveRecord::Base
  has_many :stock_quantities
  has_many :book_stores, through: :stock_quantities
  has_many :recipes
end