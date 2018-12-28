class WelcomeController < ApplicationController
  def index
    @q = Hotel.ransack(params[:q])
    @hotels = @q.result(distinct: true)
  end
  def prefecture_search
    @q = Hotel.ransack(params[:q])
    @hotels = @q.result(distinct: true)
  end
  def city_search
    @q = Hotel.ransack(params[:q])
    @hotels = @q.result(distinct: true)
  end
  def hotel_search
    @q = Hotel.ransack(params[:q])
    @hotels = @q.result(distinct: true)
  end
end
