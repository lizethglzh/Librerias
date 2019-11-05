class SearchController < ApplicationController

	def new 
		@search = Search.new
		@categories = Book.uniq.pluck(:category)
	end

	def create 
		@search = Search.create(search_params)
		redirect_tp @search
	end

	def show
		@search = Search.find(params[:id])
	end

	private

	def search_params
		params.require(;search).permit(:keywords, :category, :min_price, :max_price, :isbn)
		
	end
end
