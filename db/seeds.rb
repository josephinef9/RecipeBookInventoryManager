# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
jo = Manager.create!(name: "Jo", password: "password", password_digest: "password")

worlds_best_book_store = BookStore.create!(name: "Worlds Best Book Store", location: "123 Easy Street", manager: jo)
dev_book_store = BookStore.create!(name: "Dev Book Store", location: "123 State Street", manager: jo)

cooking_lovers = RecipeBook.create!(name: "Cooking Lovers", author_name: "Jo")
baking_genious = RecipeBook.create!(name: "Baking Genious", author_name: "Cindy")
feel_good_recipes = RecipeBook.create!(name: "Feel Good Recipes", author_name: "Daphne")
family_cooks = RecipeBook.create!(name: "Family Cooks", author_name: "Henry")
quick_recipes = RecipeBook.create!(name: "Quick Recipes", author_name: "Julie")

Recipe.create!(name: "BlueBerry Pie", delicious_rating: 8, recipe_books: [baking_genious, family_cooks])
Recipe.create!(name: "Peanut Butter Cookies", delicious_rating: 6, recipe_books: [baking_genious])
Recipe.create!(name: "Grilled Cheese", delicious_rating: 7, recipe_books: [quick_recipes])
Recipe.create!(name: "Pizza", delicious_rating: 8, recipe_books: [quick_recipes])
Recipe.create!(name: "Hamburger", delicious_rating: 5, recipe_books: [feel_good_recipes])
Recipe.create!(name: "Chicken Noodle Soup", delicious_rating: 7, recipe_books: [feel_good_recipes])
Recipe.create!(name: "Granola", delicious_rating: 6, recipe_books: [family_cooks])
Recipe.create!(name: "Fried Rice", delicious_rating: 8, recipe_books: [family_cooks])
Recipe.create!(name: "BBQ Chicken", delicious_rating: 7, recipe_books: [cooking_lovers])
Recipe.create!(name: "Brownie", delicious_rating: 10, recipe_books: [cooking_lovers])

StockQuantity.create!(amount: 5, cost: 25, book_store: worlds_best_book_store, recipe_book: cooking_lovers)
StockQuantity.create!(amount: 12, cost: 50, book_store: worlds_best_book_store, recipe_book: baking_genious)
StockQuantity.create!(amount: 7, cost: 35, book_store: worlds_best_book_store, recipe_book: feel_good_recipes)
StockQuantity.create!(amount: 7, cost: 35, book_store: dev_book_store, recipe_book: family_cooks)
StockQuantity.create!(amount: 7, cost: 35, book_store: dev_book_store, recipe_book: quick_recipes)
