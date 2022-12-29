class RestaurantsController < ActionController::Base
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
			render json: { status: 'SUCCESS', data: restaurants }
		else
			render json: { status: 'ERROR', data: restaurants.errors }
		end
	end

	private

	def restaurant_params
    params.permit(:name, :description, :price, :thumbnail_url)
  end
end
