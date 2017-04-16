class ReviewsController < ApplicationController

  def create
    review = Review.new(review_params)
    review.user_id = session[:user_id]
    review.product_id = params[:product_id]
    if review.save
      redirect_to product_path(params[:product_id])
    else
      redirect_to product_path(params[:product_id])
    end
  end

  private
  def review_params
    params.require(:review).permit(:rating, :description)
  end

end
