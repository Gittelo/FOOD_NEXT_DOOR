class MealsController < ApplicationController
  before_action :set_meals, only: [:show, :edit, :destroy, :update]
  skip_before_action :authenticate_user!, only: [ :index, :show]
  #layout 'map', only: :index

  def index
    @meals = policy_scope(Meal).order(created_at: :desc)
    authorize @meals

    if params[:location].present?
         @meals = Meal.near(params[:location], 20, order: 'distance')
      else
        @meals = Meal.all
    end

    @markers = @meals.map do |meal|
      {
        lat: meal.latitude,
        lng: meal.longitude,
        # infoWindow: { content: render_to_string(partial: "/meals/map_box", locals: { meal: meal }) }
      }
    end

  end

  def show
    @item = Item.new
  end

  def new
    @meal = Meal.new
    authorize @meal
  end

  def create
    @meal = Meal.new(meal_params)
    @meal.cook = current_user
    @meal.address = current_user.address
    #raise
    authorize @meal
    if @meal.photo.nil?
      @meal.photo = "https://cdn3.tmbi.com/secure/RMS/attachments/37/1200x1200/Traditional-Lasagna_EXPS_THND16_12003_C07_26_6b.jpg"
    end
    if @meal.save
      #redirect_to meals_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @meal.update(meal_params)
    redirect_to meal_path(@meal)
  end

  def destroy
    @meal.destroy
    redirect_to meals_path
  end

  def my_repository
    @my_meals = current_user.meals
    authorize @my_meals
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
