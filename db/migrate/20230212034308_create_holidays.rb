# frozen_string_literal: true

class CreateHolidays < ActiveRecord::Migration[5.2]
  def change
    create_table :holidays do |t|
      t.string :value
      t.string :label

      t.timestamps
    end
  end
end
