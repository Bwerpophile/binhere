class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :destroy]

  def create
    @bin = Bin.find(params[:bin_id])
    @review = Review.new(review_params)
    @review.bin = @bin
    @review.user = current_user

    if @review.save
      redirect_to bin_path @bin
    else
      redirect_to bin_path @bin
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    # redirect_to bin_path
  end

  def review_params
    params.require(:review).permit(:name, :description, :id)
  end
end
