class Recipe < ActiveRecord::Base
  belongs_to :recipe_book
  delegate :book_stores, to: :recipe_books

  scope :rating, -> { where("delicious_rating > 7") }

  validates :name, presence: true
  validates :delicious_rating, presence: true
end
