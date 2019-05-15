class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.belongs_to :course, foreign_key: true
      t.string :address_first
      t.string :address_second
      t.string :street
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
