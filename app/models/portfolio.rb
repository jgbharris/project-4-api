class Portfolio < ApplicationRecord
  belongs_to :user
  has_many :stocks, dependent: :destroy
  has_many :comments, dependent: :destroy
end
