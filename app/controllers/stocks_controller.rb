class StocksController < ApplicationController
  before_action :set_stock, only: [:show, :update, :destroy]
  skip_before_action :authenticate_user!

  # GET /stocks
  def index
    @stocks = Stock.all

    render json: @stocks
  end

  # GET /stocks/1
  def show
    render json: @stock
  end

  # POST /stocks
  def create
    @stock = Stock.new(stock_params)

    if @stock.save
      render json: @stock, status: :created, location: @stock
    else
      render json: @stock.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /stocks/1
  def update
    if @stock.update(stock_params)
      render json: @stock
    else
      render json: @stock.errors, status: :unprocessable_entity
    end
  end

  # DELETE /stocks/1
  def destroy
    @stock.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stock
      @stock = Stock.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def stock_params
      params.permit(:ticker, :name, :price_open, :price_close, :sector, :fifty_two_week_high, :fifty_two_week_low, :price_to_earnings, :price_to_book, :price_to_sales, :market_cap, portfolio_ids: [])
    end
end
