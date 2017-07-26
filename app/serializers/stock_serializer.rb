class StockSerializer < ActiveModel::Serializer
  belongs_to :portfolio
  # has_many :users, through: :portfolios
  attributes :id, :ticker, :name, :sector, :shares
end
