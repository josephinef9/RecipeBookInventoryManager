require "rails_helper"

RSpec.describe RecipesController, type: :controller do
  describe "GET index" do
    it "assigns @recipes" do
      recipe = create :recipe
      session[:user_id] = 1
      get :index
      expect(assigns(:recipes)).to eq([recipe])
    end

    it "renders the index template" do
      session[:user_id] = 1
      get :index
      expect(response).to render_template("index")
    end
  end
end