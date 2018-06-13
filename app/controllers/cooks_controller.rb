class CooksController < ApplicationController
skip_before_action :authenticate_user!, only: [:show]
  def show
    @meal = Meal.find(params[:id])
    @cook = @meal.cook
    authorize @meal
    authorize @cook
  end

end
