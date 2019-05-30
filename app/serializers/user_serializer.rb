# frozen_string_literal: true

class UserSerializer < ActiveModel::Serializer
  attributes :f_name, :l_name, :email, :courses
  has_many :favorites
  has_many :courses, through: :favorites
end
