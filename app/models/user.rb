class User < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_secure_password validations: false
  has_many :portfolios, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :stocks, through: :portfolios
  validates :username, presence: true
  validates :email, uniqueness: true, presence: true
  validates :password, presence: true, confirmation: true, unless: :oauth_login?

  def oauth_login?
    facebook_id.present?
  end
end
