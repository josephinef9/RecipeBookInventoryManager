class BookStoresController < ApplicationController
  before_action :require_login

  def index
    @book_stores = BookStore.all
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
    @book_store.save
    redirect_to book_stores_path
  end

  def destroy
    @book_store = BookStore.find(params[:id]).destroy
    redirect_to book_stores_path
  end

private

  def book_store_params
    params.require(:book_store).permit(:name, :location)
  end

  def require_login
    return head(:forbidden) unless session.include? :user_id
  end
end
