# frozen_string_literal: true

module Restaurants
  class ReviewsController < ApplicationController
    def create
      restaurant = Restaurant.find(params[:restaurant_id])
      review = Review.new(review_params)
      review.restaurant_id = restaurant.id

      review.save!
      render json: { data: review }
    end

    private

    def review_params
      params.permit(:user_name, :content, :restaurant_id)
    end
  end
end
