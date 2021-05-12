class RestaurantsController < ApplicationController
  def index
		@restaurants = Restaurant.all
		before_action :set_restaurant, only: :show
  end

  def show
  end

	private

	def set_restaurant
		@restaurant = Restaurant.find(params[:id])
	end
end