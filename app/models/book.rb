class Book < ApplicationRecord

	belongs_to :user
	has_many :books_stores
	accepts_nested_attributes_for :books_stores
	has_many :stores, through: :books_stores
	
	def self.search(search)
		if search
			where("title LIKE ? OR author LIKE ? OR year LIKE ? OR store LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
		else
			all
		end
	end
end
