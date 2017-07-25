class PortfolioSerializer < ActiveModel::Serializer
  attributes :id, :name, :stocks, :comments
  has_many :comments
end
