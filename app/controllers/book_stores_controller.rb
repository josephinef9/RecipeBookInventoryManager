class BookStoresController < ApplicationController
  before_action :require_login

  def index
    @book_stores = BookStore.all
    @manager = current_user
  end

  def show
    @book_store = BookStore.find(params[:id])
    @manager = current_user
  end

  def new
    @book_store = BookStore.new
  end

  def create
    @book_store = BookStore.new(book_store_params)
    @book_store.manager_id = current_user.id
    if @book_store.save
      redirect_to book_stores_path
    else
      render :new
    end
  end

  def destroy
    @book_store = BookStore.find(params[:id]).destroy
    redirect_to book_stores_path
  end

private

  def book_store_params
    params.require(:book_store).permit(:name, :location)
  end
end
