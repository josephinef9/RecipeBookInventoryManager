class RecipeBook < ActiveRecord::Base
  has_many :stock_quantities, dependent: :destroy
  has_many :book_stores, through: :stock_quantities
  has_many :recipes

  validates :name, presence: true
  validates :author_name, presence: true

  def overall_amount(_recipe_book)
    stock_quantities.sum(:amount)
  end
end
