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

  def update
    @review = Review.find(review_params_id)
    @review.update(review_params)
    tempId = @review.book_id
    @book = Book.find(tempId)
    render :edit
  end

  def destroy
    @review = Review.find(params[:id])
    tempId = @review.book_id
    @review.destroy
    @book = Book.find(tempId)
    render :delete
  end


  private

  def review_params
    params.require(:review).permit(:rating, :body, :book_id, :author_id)
  end

  def review_params_id
    params.require(:review).permit(:id)[:id]
  end
end