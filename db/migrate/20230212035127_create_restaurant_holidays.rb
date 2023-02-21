# frozen_string_literal: true

class CreateRestaurantHolidays < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurant_holidays do |t|
      t.references :restaurant, foreign_key: true
      t.references :holiday, foreign_key: true

      t.timestamps
    end
  end
end
