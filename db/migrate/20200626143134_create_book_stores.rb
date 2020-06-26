class CreateBookStores < ActiveRecord::Migration[6.0]
  def change
    create_table :book_stores do |t|
      t.string :name
      t.string :location
      t.belongs_to :manager

      t.timestamps
    end
  end
end
