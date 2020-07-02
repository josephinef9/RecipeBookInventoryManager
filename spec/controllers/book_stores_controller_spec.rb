require "rails_helper"

RSpec.describe BookStoresController, type: :controller do
  describe "GET index" do
    it "assigns @book_stores" do
      book_store = create :book_store
      session[:user_id] = 1
      get :index
      expect(assigns(:book_stores)).to eq([book_store])
    end

    it "renders the index template" do
      session[:user_id] = 1
      get :index
      expect(response).to render_template("index")
    end
  end
end