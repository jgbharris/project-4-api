class UserSerializer < ActiveModel::Serializer
  has_many :portfolios
  has_many :stocks, through: :portfolios
  has_many :comments
  attributes :id, :username, :email, :image_src, :firstname, :lastname

  def image_src
    object.image.url
  end
end
