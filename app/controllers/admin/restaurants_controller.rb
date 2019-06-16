class Admin::RestaurantsController < ApplicationController
  before_action :authenticate_user!
  before_action :if_not_admin
  before_action :set_restaurant, only: [:show, :edit, :destroy]

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to admin_restaurants_path
    else
      render new_admin_restaurant_path
    end
  end

  def show
  end

  def edit
  end

  def destroy
  end

  private
  def if_not_admin
    redirect_to root_path unless current_user.admin?
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :budget_d, :budget_n, :header, :description, :image)
  end
end
