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

cooking_lovers = RecipeBook.create!(name: "Cooking Lovers", author_name: "Jo", book_store: worlds_best_book_store)
baking_genious =  RecipeBook.create!(name: "Baking Genious", author_name: "Cindy", book_store: worlds_best_book_store)
feel_good_recipes =  RecipeBook.create!(name: "Feel Good Recipes", author_name: "Daphne", book_store: worlds_best_book_store)
family_cooks =  RecipeBook.create!(name: "Family Cooks", author_name: "Henry", book_store: dev_book_store)
quick_recipes =  RecipeBook.create!(name: "Quick Recipes", author_name: "Julie", book_store: dev_book_store)


blueberry_pie = Recipe.create!(name: "BlueBerry Pie", delicious_rating: 8, recipe_book: baking_genious)
peanut_butter_cookie = Recipe.create!(name: "Peanut Butter Cookies", delicious_rating: 6, recipe_book: baking_genious)
grilled_cheese = Recipe.create!(name: "Grilled Cheese", delicious_rating: 7, recipe_book: quick_recipes)
hamburger = Recipe.create!(name: "Hamburger", delicious_rating: 8, recipe_book: quick_recipes)
pizza = Recipe.create!(name: "Hamburger", delicious_rating: 5, recipe_book: feel_good_recipes)
chicken_noodle_soup = Recipe.create!(name: "Chicken Noodle Soup", delicious_rating: 7, recipe_book: feel_good_recipes)
granola = Recipe.create!(name: "Granola", delicious_rating: 6, recipe_book: family_cooks)
fried_rice = Recipe.create!(name: "Fried Rice", delicious_rating: 8, recipe_book: family_cooks)
bbq_chicken = Recipe.create!(name: "BBQ Chicken", delicious_rating: 7, recipe_book: cooking_lovers)
brownie = Recipe.create!(name: "Brownie", delicious_rating: 10, recipe_book: cooking_lovers)

stock_quantity_1 = StockQuantity.create!(number_of_recipe_books: 5, cost: 25.00, book_store: worlds_best_book_store, recipe_book: cooking_lovers)
stock_quantity_2 = StockQuantity.create!(number_of_recipe_books: 12, cost: 50.00, book_store: worlds_best_book_store, recipe_book: baking_genious)
stock_quantity_3 = StockQuantity.create!(number_of_recipe_books: 7, cost: 35.50, book_store: worlds_best_book_store, recipe_book: feel_good_recipes)
stock_quantity_4 = StockQuantity.create!(number_of_recipe_books: 7, cost: 35.50, book_store: dev_book_store, recipe_book: family_cooks)
stock_quantity_5 = StockQuantity.create!(number_of_recipe_books: 7, cost: 35.50, book_store: dev_book_store, recipe_book: quick_recipes)



