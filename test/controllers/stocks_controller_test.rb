require 'test_helper'

class StocksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stock = stocks(:one)
  end

  test "should get index" do
    get stocks_url, as: :json
    assert_response :success
  end

  test "should create stock" do
    assert_difference('Stock.count') do
      post stocks_url, params: { stock: { 52_high: @stock.52_high, 52_low: @stock.52_low, market_cap: @stock.market_cap, name: @stock.name, price_close: @stock.price_close, price_open: @stock.price_open, price_to_book: @stock.price_to_book, price_to_earnings: @stock.price_to_earnings, price_to_sales: @stock.price_to_sales, sector: @stock.sector, ticker: @stock.ticker } }, as: :json
    end

    assert_response 201
  end

  test "should show stock" do
    get stock_url(@stock), as: :json
    assert_response :success
  end

  test "should update stock" do
    patch stock_url(@stock), params: { stock: { 52_high: @stock.52_high, 52_low: @stock.52_low, market_cap: @stock.market_cap, name: @stock.name, price_close: @stock.price_close, price_open: @stock.price_open, price_to_book: @stock.price_to_book, price_to_earnings: @stock.price_to_earnings, price_to_sales: @stock.price_to_sales, sector: @stock.sector, ticker: @stock.ticker } }, as: :json
    assert_response 200
  end

  test "should destroy stock" do
    assert_difference('Stock.count', -1) do
      delete stock_url(@stock), as: :json
    end

    assert_response 204
  end
end
