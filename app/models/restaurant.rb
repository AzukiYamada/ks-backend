class Restaurant < ApplicationRecord
	validates :name, presence: true
	validates :thumbnail_url, presence: true
end
