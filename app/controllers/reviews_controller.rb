class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def create
    @bin = Bin.find(params[:bin_id])
    @review = Review.new(review_params)
    @review.bin = @bin
    @review.user = current_user

    if @review.save
      redirect_to bin_path @bin
    end
  end

  def review_params
    params.require(:review).permit(:name, :description)
  end
end
