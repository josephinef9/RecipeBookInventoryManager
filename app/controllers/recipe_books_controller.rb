class RecipeBooksController < ApplicationController
  before_action :require_login

  def index
    @recipe_books = RecipeBook.all
    @manager = current_user
  end

  def show
    @recipe_book = RecipeBook.find(params[:id])
    # binding.pry
  end

  def new
    @recipe_book = RecipeBook.new
  end

  def create
    recipe_book = RecipeBook.new(recipe_book_params)
    if recipe_book.save
      redirect_to recipe_books_path
    else
      render :new
    end
  end

  def destroy
    @recipe_book = RecipeBook.find(params[:id]).destroy
    redirect_to recipe_books_path
  end

private

  def recipe_book_params
    params.require(:recipe_book).permit(:name, :author_name, :recipe_ids)
  end
end
