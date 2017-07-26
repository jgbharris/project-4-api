class Portfolio < ApplicationRecord
  belongs_to :user
  has_many :stocks
  has_many :comments
end
