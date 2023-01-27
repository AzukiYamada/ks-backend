class Restaurants::ReviewsController < ActionController::Base
	protect_from_forgery

  def create
		restaurant = Restaurant.find(params[:restaurant_id])
    review = Review.new(review_params)
		review.restaurant_id = restaurant.id

    if review.save
      render json: { data: review }
    else
      render json: { data: review.errors }
    end
  end

	private

  def review_params
    params.require(:review).permit(:content, :user_name)
  end
end
