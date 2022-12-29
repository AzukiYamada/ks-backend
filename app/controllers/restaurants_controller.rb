class RestaurantsController < ActionController::Base

	protect_from_forgery

	def index
		restaurants = Restaurant.all

		render  json: { data: restaurants }
	end

	def show
		restaurants = Restaurant.find(params[:id])

		render json: { data: restaurants }
	end

	def create
		restaurants = Restaurant.new(restaurant_params)
		if restaurants.save
			render json: {data: restaurants }
		else
			render json: {data: restaurants.errors }
		end
	end

	private

	def restaurant_params
    params.permit(:name, :description, :price, :thumbnail_url)
  end
end
