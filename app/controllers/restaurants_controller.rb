class RestaurantsController < ApplicationController

	def index
		@restaurants = Restaurant.all.order("created_at DESC")
	end

	def new
		@restaurant = Restaurant.new
	end

	def create
		@restaurant = Restaurant.new(restaurant_params)
	end

	def edit
	
	end
	
	def update
		if @restaurant.update(restaurant_params)
			redirect_to @restaurant, notice: "Restaurant was Successfully updated"
		else
			render 'edit'
		end
	end

	def destroy

	end


	

	private

	def restaurant_params
		params.require(:restaurant).permit(:name, :description, :address)
	end

end
