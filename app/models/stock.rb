class Stock < ApplicationRecord
  has_and_belongs_to_many :portfolios
  has_many :users, through: :portfolios
end
