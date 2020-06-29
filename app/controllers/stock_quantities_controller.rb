class StockQuantitiesController < ApplicationController
  before_action :require_login

  def index
    @book_store = BookStore.find(params[:book_store_id])
    @stock_quantities = StockQuantity.where(book_store: @book_store)
  end

  def new
    @stock_quantity = StockQuantity.new
    @book_store = BookStore.find(params[:book_store_id])
  end

  def create
    @stock_quantity = StockQuantity.new(stock_quantity_params)
    @stock_quantity.book_store_id = params[:book_store_id]
    if @stock_quantity.save
      redirect_to book_store_stock_quantities_path(params[:book_store_id])
    else
      render :new
    end
  end

private

  def stock_quantity_params
    params.require(:stock_quantity).permit(:amount, :cost, :book_store_id, :recipe_book_id)
  end
end
