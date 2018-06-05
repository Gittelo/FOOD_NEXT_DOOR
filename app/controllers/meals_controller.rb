class MealsController < ApplicationController
  before_action :set_meals, only: [:show, :edit, :destroy]

  def index
    @meals = policy_scope(Meal).order(created_at: :desc)
    authorize @meals
  end

  def show
    @order = Order.new
  end

  def new
    @meal = Meal.new
    authorize @meal
  end

  def create
    @meal = Meal.new(meal_params)
    authorize @meal
    if @meal.save
      redirect_to meals_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @meal.destroy
    redirect_to meals_path
  end

  private

  def meal_params
    params.require(:meal).permit(:name, :description, :address, :price, :grams_per_dose, :ingredients)
  end

  def set_meals
    @meal = Meal.find(params[:id])
    authorize @meal
  end

end
