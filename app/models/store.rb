class Store < ApplicationRecord
	has_many :books_stores
	accepts_nested_attributes_for :books_stores
end
