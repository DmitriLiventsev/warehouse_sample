class Product < ApplicationRecord
	has_many :product_category
	has_many :categories, through: :product_category

	validates :description, :price, presence: true
	validates :price, numericality: true

	mount_uploader :image, ImageUploader
end
