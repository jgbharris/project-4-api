class UserSerializer < ActiveModel::Serializer
  has_many :portfolios
  has_many :stocks, through: :portfolios
  attributes :id, :username, :email
end
