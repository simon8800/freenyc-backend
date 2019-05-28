# frozen_string_literal: true

class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.belongs_to :course, foreign_key: true
      t.string :address_first
      t.string :address_second, default: ''
      t.string :city
      t.string :zipcode
      t.float :lat
      t.float :lng
      t.timestamps
    end
  end
end
