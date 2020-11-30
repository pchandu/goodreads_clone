class Api::ReviewsController < ApplicationController
  before_action :require_logged_in

  def create
    # debugger
    @review = Review.new(review_params)
    if @review.save! 
      # debugger
      # current_user.reviews.push(@review)
      render :show
    else
      render json: ["Review is not processable"], status: 401
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :body, :book_id, :author_id)
  end
end