class CreateStockQuantities < ActiveRecord::Migration[6.0]
  def change
    create_table :stock_quantities do |t|
      t.integer :amount
      t.belongs_to :recipe_book
      t.belongs_to :book_store
      t.float :cost

      t.timestamps
    end
  end
end
