class PagesController < ApplicationController
	def about
		@title = 'About Us';
		@content = 'Cows are here'
	end
end
