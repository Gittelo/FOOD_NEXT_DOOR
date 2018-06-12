class MealsController < ApplicationController
  before_action :set_meals, only: [:show, :edit, :destroy, :update]
  skip_before_action :authenticate_user!, only: [ :index, :show]
  #layout 'map', only: :index

  def index
    @all_meals = policy_scope(Meal).order(created_at: :desc)
    meals_of_the_day(@all_meals)
    authorize @all_meals

    # Query location in search bar
    if params[:location].present?
      @meals = Meal.near(params[:location], 5, order: 'distance')
      meals_of_the_day(@meals)
    else
      meals_of_the_day(@all_meals)
    end

    # Markers placement, icons and info window
    iconmarker = 'http://maps.google.com/mapfiles/ms/icons/green-dot.png'
    @markers = @meals.map do |meal|
      {
        lat: meal.latitude,
        lng: meal.longitude,
        icon: iconmarker,
        infoWindow: {
                    content: meal.name
                    }
      }
    end

    # Set max parameters
    @max_price = 30
    @max_distance = 10

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


  private
  def meals_of_the_day(all_meals)
  # This was created because we needed to know the meals where the week_day == Date.today
  # We needed to create a cicle inside of a cicle because we have a 1:N relationship and it was supose to be N:N
  # We have that 1 meal have N weekdays and 1 weekday have only 1 meal(That is not true. It is only true for one cook!)
  # One cook can only assign one meal per day.
    all_meals.each do |meal|
      @meals = []
      meal.week_days.each do |weekday|
        if weekday.date == Date.today
          @meals << weekday.meal
        end
      end
    end
  end

  def meal_params
    params.require(:meal).permit(:name, :description, :address, :price, :grams_per_dose, :ingredients)
  end

  def set_meals
    @meal = Meal.find(params[:id])
    authorize @meal
  end

end
