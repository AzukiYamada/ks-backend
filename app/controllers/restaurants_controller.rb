class RestaurantsController < ActionController::Base
  protect_from_forgery

  def index
    restaurants = Restaurant.all

    render json: { data: restaurants }
  end

  def show
    restaurant = Restaurant.find(params[:id])

    render json: { data: restaurant }
  end

  def create
    restaurant = Restaurant.new(restaurant_params)
    if restaurant.save
      render json: { data: restaurant }
    else
      render json: { data: restaurant.errors }
    end
  end

  def destroy
    restaurant = Restaurant.find(params[:id])
    restaurant.destroy

    head :ok
  end

  def update
    restaurant = Restaurant.find(params[:id])
    if restaurant.update(restaurant_params)
      render json: restaurant
    else
      render json: restaurant.errors
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :description, :price, :thumbnail_url)
  end
end
