# frozen_string_literal: true

class RestaurantHoliday < ApplicationRecord
  belongs_to :restaurant
  belongs_to :holiday
end
