class RemoveRecipeBookIdFromRecipes < ActiveRecord::Migration[6.0]
  def change
    remove_column :recipes, :recipe_book_id, :integer
  end
end
