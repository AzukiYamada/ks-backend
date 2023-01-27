# frozen_string_literal: true

class ReviewsController < ActionController::Base
  protect_from_forgery

  def destroy
    review = Review.find(params[:id])
    review.destroy
    head :ok
  end
end
