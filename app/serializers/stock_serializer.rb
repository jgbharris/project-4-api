class StockSerializer < ActiveModel::Serializer
  has_and_belongs_to_many :portfolios
  has_many :users, through: :portfolios
  attributes :id, :ticker, :name, :price_open, :price_close, :sector, :fifty_two_week_high, :fifty_two_week_low, :price_to_earnings, :price_to_book, :price_to_sales, :market_cap,
  :portfolio_ids
end
