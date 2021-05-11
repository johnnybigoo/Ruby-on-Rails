class Category < ApplicationRecord
	has_many :restaurants

	validates :title, precense: true

	has_one_attached :image
end
