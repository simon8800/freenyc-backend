# frozen_string_literal: true

class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :title
      t.belongs_to :category, foreign_key: true
      t.string :description, default: 'none'
      t.string :instructor, default: 'staff'
      t.string :url, default: 'none'

      t.timestamps
    end
  end
end
