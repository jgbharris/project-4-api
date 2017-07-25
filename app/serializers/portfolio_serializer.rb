class PortfolioSerializer < ActiveModel::Serializer
  attributes :id, :name, :stocks, :comments, :stock_ids
  has_many :comments
end
