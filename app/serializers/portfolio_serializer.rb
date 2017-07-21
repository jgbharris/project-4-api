class PortfolioSerializer < ActiveModel::Serializer
  belongs_to :user
  has_and_belongs_to_many :stocks
  attributes :id, :name, :user_ids
end
