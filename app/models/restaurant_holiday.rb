class RestaurantHoliday < ApplicationRecord
  belongs_to :restaurant
  belongs_to :holiday
end
