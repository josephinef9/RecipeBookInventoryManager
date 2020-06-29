class RecipeBooksController < ApplicationController
  before_action :require_login

  def index
    @recipe_books = RecipeBook.all
    @manager = current_user
  end

  def new
    @recipe_book = RecipeBook.new
  end

  def create
    recipe_book = RecipeBook.new(recipe_book_params)
    recipe_book.save
    redirect_to recipe_books_path
  end

private

  def recipe_book_params
    params.require(:recipe_book).permit(:name, :author_name)
  end
end
