# frozen_string_literal: true

class CreateRestaurant < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :name, null: false
      t.text :description
      t.integer :price
      t.text :thumbnail_url, null: false

      t.timestamps
    end
  end
end
