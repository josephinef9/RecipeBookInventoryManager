class BookStoresController < ApplicationController
  def index
    @book_stores = BookStore.all
  end

  def show
    @book_store = BookStore.find(params[:id])
    # binding.pry
  end
end