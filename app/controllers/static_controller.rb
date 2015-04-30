class StaticController < ApplicationController

	def welcome
  		redirect_to ('file:///Users/user/Desktop/projects/12_weeks_projects/dish_rater/temp_welcome_page/yummy_yucky.html')
	end
end
