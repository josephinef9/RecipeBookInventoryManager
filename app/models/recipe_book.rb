class RecipeBook < ActiveRecord::Base
  belongs_to :book_store
  has_many :recipes
end