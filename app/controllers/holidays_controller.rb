class HolidaysController < ApplicationController
  def index
    holidays = Holiday.all
    render json: { holidays: holidays }
  end
end
