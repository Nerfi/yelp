class ReviewsController < ApplicationController
  def new
    #we need @restaurant in our 'simple_form_for'
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new

  end


  def create
    @review = Review.new(review_params)
    #we need 'restaurant_id' to associate review with
    #corresponding restaurant
    @review.restaurant = Restaurant.find(params[:restaurant_id])
    @review.save

  end

  def index
    @review = Review.all

  end

  private

  def review_params
    params.require(:review).permit(:content)

  end




end
