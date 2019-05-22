class ReviewsController < ApplicationController


   def new
    # we need @restaurant in our `simple_form_for`
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    # we need `restaurant_id` to asssociate review with corresponding restaurant
     if @review.save
        redirect_to restaurant_path(@review)
      else
        render :new
      end
  end

  private

  def review_params
    params.require(:review).permit(:restaurant_id, :content, :rating)
  end
end
