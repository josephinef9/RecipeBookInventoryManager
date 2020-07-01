class Instruction < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :recipe_book
end
