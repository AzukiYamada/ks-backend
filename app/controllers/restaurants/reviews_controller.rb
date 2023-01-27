class Restaurants::ReviewsController < ActionController::Base
	protect_from_forgery

  def create
		restaurant = Restaurant.find(params[:restaurant_id])
    review = Review.new(review_params)
		review.restaurant = restaurant

    if review.save
      render json: { data: reviews }
    else
      render json: { data: reviews.errors }
    end
  end

	private

  def review_params
    params.require(:review).permit(:content, :user_name)
  end
end
