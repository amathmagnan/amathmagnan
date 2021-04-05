class ReviewsController < ApplicationController

   # GET /restaurants/:restaurant_id/reviews/new
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
    # review/new.html.erb
  end


# POST /restaurants/:restaurant_id/reviews
  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    #review.restaurant.id = @restaurant.id
    @review.restaurant = @restaurant
    @review.save
    #rediriger :
    redirect_to restaurant_path(@restaurant)
  end


private

  def review_params
    params.require(:review).permit(:content)
  end


end
