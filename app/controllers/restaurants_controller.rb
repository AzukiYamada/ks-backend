class RestaurantsController < ActionController::Base
	def index
		restaurants = Restaurant.all

		render  json: { data: restaurants }
	end

	def show
		restaurants = Restaurant.find(params[:id])

		render json: { data: restaurants }
	end
end
