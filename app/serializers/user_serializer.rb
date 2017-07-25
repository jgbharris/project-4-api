class UserSerializer < ActiveModel::Serializer
  has_many :portfolios
  has_many :stocks, through: :portfolios
  has_many :comments
  attributes :id, :username, :email
end
