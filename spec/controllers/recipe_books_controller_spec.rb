require "rails_helper"

RSpec.describe RecipeBooksController, type: :controller do
  describe "GET index" do
    it "assigns @recipe_books" do
      recipe_book = create :recipe_book
      session[:user_id] = 1
      get :index
      expect(assigns(:recipe_books)).to eq([recipe_book])
    end

    it "renders the index template" do
      session[:user_id] = 1
      get :index
      expect(response).to render_template("index")
    end
  end
end