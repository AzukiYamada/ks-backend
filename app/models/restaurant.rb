class Restaurant < ApplicationRecord
	validates :name, presence: true
	validates :thumbnail_url, presence: true

	has_many :reviews, dependent: :destroy
end
