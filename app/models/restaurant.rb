# frozen_string_literal: true

class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :thumbnail_url, presence: true

  has_many :reviews, dependent: :destroy
  has_many :restaurant_holidays
  has_many :holidays, through: :restaurant_holidays
end
