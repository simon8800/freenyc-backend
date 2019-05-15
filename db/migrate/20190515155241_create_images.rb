class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.belongs_to :course, foreign_key: true
      t.string :name, default: "none"
      t.string :description, default: "none"
      t.string :url

      t.timestamps
    end
  end
end
