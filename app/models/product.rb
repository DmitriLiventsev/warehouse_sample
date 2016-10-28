class Product < ApplicationRecord
	validates :description, :price, presence: true
end
