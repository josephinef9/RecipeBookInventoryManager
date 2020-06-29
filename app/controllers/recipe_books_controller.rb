class RecipeBooksController < ApplicationController
  before_action :require_login

  def index
    @recipe_books = RecipeBook.all
  end
end