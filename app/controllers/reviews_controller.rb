class ReviewsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]

  def new
    @meal = Meal.find(params[:meal_id])
    @review = Review.new
    authorize @review
    authorize @meal
  end

  def create
    @review = Review.new(review_params)
    @meal = Meal.find(params[:meal_id])
    @user = current_user.id
    @review.user_id = @user
    @meal.reviews << @review
    if @review.save
      redirect_to @meal
    else
      render :new
    end
    authorize @meal
    authorize @review
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def set_review
    @review = Review.find(params[:id])
    authorize @review
  end
end
