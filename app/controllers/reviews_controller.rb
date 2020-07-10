class ReviewsController < ApplicationController
  private

  def set_review
    @review = Review.find(params[:id])
  end

  def review_params
    params_require(:review).permit(:content, photos: [])
  end

end
