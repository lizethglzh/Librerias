class Book < ApplicationRecord
	belongs_to :user

	def self.search(search)
		if search
			where("title LIKE ? OR author LIKE ? OR year LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
		else
			all
		end
	end
end
