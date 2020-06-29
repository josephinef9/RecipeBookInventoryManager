class StockQuantitiesController < ApplicationController
  before_action :require_login

  def show
    # @book_stores = BookStore.find(params[:book_store_id])
    @stock_quantity = StockQuantity.find(params[:id])
  end

  def new
    @stock_quantity = StockQuantity.new
    @book_store = BookStore.find(params[:book_store_id])
  end

  def create
    @stock_quantity = StockQuantity.new(stock_quantity_params)
    @stock_quantity.book_store_id = params[:book_store_id]
    @stock_quantity.recipe_book_id = params[:stock_quantity][:recipe_book_id]
    @stock_quantity.save
    redirect_to book_store_path(params[:book_store_id])
  end

private

  def stock_quantity_params
    params.require(:stock_quantity).permit(:amount, :cost, :book_store_id, :recipe_book_id)
  end

  def require_login
    return head(:forbidden) unless session.include? :user_id
  end
end
