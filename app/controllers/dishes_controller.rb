class DishesController < ApplicationController
	before_action :set_restaurant
	before_action :set_dish, except: [:create]

	def create
		@dish = @restaurant.dishes.create(dish_params)
		redirect_to @restaurant 
	end

	def show
		dish = @restaurant.dishes.list
	end

	def destroy
		if @dish.destroy
			flash[:success] = "Restaurant was deleted"
		else
			flash[:error] = "Restaurant could not be deleted dude."	
		end
		redirect_to @restaurant	
	end
 	
	def complete
		@dish.update_attribute(:completed_at, Time.now)
		redirect_to @restaurant, notice: "Dish completed dude"
	end


	private

	def set_restaurant 
		@restaurant = Restaurant.find(params[:restaurant_id])
	end

	def set_dish
		@dish = @restaurant.dishes.find(params[:id])		
	end

	def dish_params
		params[:dish].permit(:name, :description, :yumyuck)
	end

end
