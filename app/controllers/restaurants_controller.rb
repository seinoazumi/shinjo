class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.order("RAND()").limit(10)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @comments = @restaurant.comments.includes(:user)
    # respond_to do |format|
    #   format.html{redirect_to root_path)}
    # end
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

    def admin_user
      redirect_to :root_path unless current_user.admin?
    end
end
