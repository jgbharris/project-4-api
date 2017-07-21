class User < ApplicationRecord
  has_secure_password
  has_many :portfolios
  has_many :stocks, through: :portfolios
  validates :username, presence: true
  validates :email, uniqueness: true, presence: true
end
