class AddPortfolioIdtoStocks < ActiveRecord::Migration[5.1]
  def change
    add_reference :stocks, :portfolio, foreign_key: true
  end
end
