class HomeController < ApplicationController
	def show
		@projects = Project.all
	end
end
