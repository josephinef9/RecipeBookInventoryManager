class RecipesController < ApplicationController
  before_action :require_login

  def index
    @recipes = Recipe.all
    @manager = current_user
    @recipes_ratings = Recipe.rating
  end
end
