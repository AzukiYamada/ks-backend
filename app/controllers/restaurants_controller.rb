# frozen_string_literal: true

class RestaurantsController < ApplicationController
  def index
    restaurants = Restaurant.all

    render json: { restaurants: restaurants.as_json(include: %i[holidays reviews]) }
  end

  def show
    restaurant = Restaurant.find(params[:id])

    render json: { restaurants: restaurant.as_json(include: %i[holidays reviews]) }
  end

  def create
    restaurant = Restaurant.create!(restaurant_params)
    render json: { restaurants: restaurant.as_json(include: %i[holidays reviews]) }
  end

  def destroy
    restaurant = Restaurant.find(params[:id])
    restaurant.destroy!

    head :ok
  end

  def update
    restaurant = Restaurant.find(params[:id])
    Restaurant.transaction do
      restaurant.restaurant_holidays.each(&:destroy!)

      params[:holiday_ids].each do |holiday_id|
        restaurant.restaurant_holidays.create!(holiday_id: holiday_id)
      end
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :description, :price, :thumbnail_url, holiday_ids:[])
  end
end
