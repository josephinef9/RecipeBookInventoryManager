class RecipeBooksController < ApplicationController
  def index
    @recipe_books = RecipeBook.all
  end
end