# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_06_26_143226) do

  create_table "book_stores", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.integer "manager_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["manager_id"], name: "index_book_stores_on_manager_id"
  end

  create_table "managers", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "recipe_books", force: :cascade do |t|
    t.string "name"
    t.string "author_name"
    t.integer "book_store_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["book_store_id"], name: "index_recipe_books_on_book_store_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.integer "delicious_rating"
    t.integer "recipe_book_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["recipe_book_id"], name: "index_recipes_on_recipe_book_id"
  end

  create_table "stock_quantities", force: :cascade do |t|
    t.integer "number_of_recipe_books"
    t.integer "recipe_book_id"
    t.integer "book_store_id"
    t.float "cost"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["book_store_id"], name: "index_stock_quantities_on_book_store_id"
    t.index ["recipe_book_id"], name: "index_stock_quantities_on_recipe_book_id"
  end

end
