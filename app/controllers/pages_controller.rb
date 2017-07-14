class PagesController < ApplicationController
	def about
		@header = "i am thae shiznizz"

	end

	def contact
		render :about
	end
end
