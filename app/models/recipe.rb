class Recipe < ActiveRecord::Base
  has_many :instructions
  has_many :recipe_books, through: :instructions
  delegate :book_stores, to: :recipe_books

  scope :rating, -> { where("delicious_rating > 7") }

  validates :name, presence: true
  validates :delicious_rating, presence: true
end
