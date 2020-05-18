class ReviewsController < ApplicationController
  before_action :set_review

  def index
    @reviews = Review.all
  end

  def show
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to review_path(@review)
    else
      render :new
    end
  end

  private

  def set_review
    @review = Review.find(params[:id])
  end

  # def review_params
  #   params.require(:review).permit(, :photo)
  # end
end
