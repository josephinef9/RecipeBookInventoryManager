class CreateInstructions < ActiveRecord::Migration[6.0]
  def change
    create_table :instructions do |t|
      t.belongs_to :recipe
      t.belongs_to :recipe_book

      t.timestamps
    end
  end
end
