class CommentSerializer < ActiveModel::Serializer
  attributes :id, :message, :created_at, :user
  has_one :user
  has_one :course
end
