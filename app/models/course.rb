# frozen_string_literal: true

class Course < ApplicationRecord
  belongs_to :category
  has_many :favorites
  has_many :addresses
  has_many :images
  has_many :users, through: :favorites

  def self.top_three
    puts 'waddup'
  end
end
