class CommentSerializer < ActiveModel::Serializer
  attributes :id, :body, :user
  has_one :user
  has_one :portfolio
end
