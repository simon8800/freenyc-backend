# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password
  validates :email, uniqueness: { case_sensitive: false }

  has_many :favorites
  has_many :courses, through: :favorites
  has_many :comments
  # has_many :courses, through: :comments
end
