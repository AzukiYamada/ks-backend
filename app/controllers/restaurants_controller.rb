# frozen_string_literal: true

class RestaurantsController < ApplicationController
  def index
    restaurants = Restaurant.all

    render json: { data: restaurants.as_json(include: :reviews) }
  end

  def show
    restaurant = Restaurant.find(params[:id])

    render json: { data: restaurant.as_json(include: :reviews) }
  end

  def create
    restaurant = Restaurant.create!(restaurant_params)

    render json: { data: restaurant }
  end

  def destroy
    restaurant = Restaurant.find(params[:id])
    restaurant.destroy!

    head :ok
  end

  def update
    restaurant = Restaurant.find(params[:id])
    restaurant.update!(restaurant_params)
    render json: restaurant
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :description, :price, :thumbnail_url)
  end
end
