class DropPortfolioStocksTable < ActiveRecord::Migration[5.1]
  def change
    drop_table :portfolios_stocks
  end
end
