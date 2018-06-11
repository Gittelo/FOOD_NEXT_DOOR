class CooksController < ApplicationController

  def show
    @meal = Meal.find(params[:id])
    @cook = @meal.cook
    authorize @meal
    authorize @cook
  end

end
