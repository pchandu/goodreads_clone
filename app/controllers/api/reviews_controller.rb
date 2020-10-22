class Api::ReviewsController < ApplicationController
  before_action :require_logged_in

  def create
    @review = current_user.reviews.new(review_params)

    if @review.save
      render :show
    else
      render json: ["Review is not processable"], status: 401
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :body, :book_id)
  end
end