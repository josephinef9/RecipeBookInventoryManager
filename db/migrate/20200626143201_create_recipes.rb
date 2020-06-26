class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :delicious_rating
      t.belongs_to :recipe_book

      t.timestamps
    end
  end
end
