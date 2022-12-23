class CreateRestaurant < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name, null: false
      t.text:description
      t.integer :price
      t.text :thumbnail_url, null: false

      t.timestamp
    end
  end
end
