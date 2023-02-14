# frozen_string_literal: true

class Holiday < ApplicationRecord
  has_many :restaurant_holidays
  has_many :restaurants, through: :restaurant_holidays
end
