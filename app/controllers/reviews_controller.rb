# frozen_string_literal: true

class ReviewsController < ApplicationController
  def destroy
    review = Review.find(params[:id])
    review.destroy!

    head :ok
  end
end
