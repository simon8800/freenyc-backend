# frozen_string_literal: true

class CategorySerializer < ActiveModel::Serializer
  has_many :courses
  attributes :name, :courses, :images

  # JSON the course title and random image_url as an object in array
  def courses
    object.courses.map do |course|
      {
        title: course.title,
        image_url: course.images.sample.url
      }
    end
  end

  def images
    object.courses.map do |course|
      course.images.sample.url
    end
  end
end
