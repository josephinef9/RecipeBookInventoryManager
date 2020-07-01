class BookStore < ActiveRecord::Base
  belongs_to :manager
  has_many :stock_quantities, dependent: :destroy
  has_many :recipe_books, through: :stock_quantities

  validates :name, presence: true
  validates :location, presence: true
end
