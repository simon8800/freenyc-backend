# frozen_string_literal: true

class CategorySerializer < ActiveModel::Serializer
  has_many :courses
  attributes :id, :name, :courses, :images

  # JSON the course title and random image_url as an object in array
  def courses
    object.courses.map do |course|
      {
        id: course.id,
        title: course.title,
        images: course.images,
        short_description: course.short_description
      }
    end
  end

  def images
    object.courses.map do |course|
      course.images.sample.url
    end
  end
end
