class RecipeBook < ActiveRecord::Base
  has_many :stock_quantities
  has_many :book_stores, through: :stock_quantities
  has_many :recipes

  def overall_amount(recipe_book)
    stock_quantities.sum(:amount)
  end
end