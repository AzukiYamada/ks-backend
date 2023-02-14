class CreateRestaurantHolidays < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurant_holidays do |t|
      t.references :restaurant, foreign_key: true
      t.references :holiday, foreign_key: true

      t.timestamps
    end
  end
end
