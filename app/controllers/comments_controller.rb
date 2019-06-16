class CommentsController < ApplicationController
  before_action :set_restaurant

  def new
    @comments = @restaurant.comments.includes(:user)
    @comment = Comment.new
  end
  
  def create
    @comment = Comment.create(comment_params)
  end

  private
  def comment_params
    params.require(:comment).permit(:comment, :rate).merge(restaurant_id: params[:restaurant_id], user_id: current_user.id)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
