class PortfolioSerializer < ActiveModel::Serializer
  attributes :id, :name, :stocks, :comments, :stock_ids, :user
  has_many :stocks
  has_many :comments
  belongs_to :user
end
