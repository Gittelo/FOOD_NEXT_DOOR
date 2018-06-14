class MealsController < ApplicationController
  before_action :set_meals, only: [:edit, :destroy, :update]
  skip_before_action :authenticate_user!, only: [ :index, :show]
  #layout 'map', only: :index

  def index
    @meals = policy_scope(Meal).order(created_at: :desc)
    authorize @meals
    # Query location in search bar
    @meals = Meal.near(params[:location], 10, order: 'distance') if params[:location].present?
    @max_price_cents = 3000
    @meals = @meals.price_cents(params[:price]) if params[:price].present?
    # @max_distance = 10
    @meals = meals_of_the_day(@meals)
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

  end

  def show
    @item = Item.new
    @meal = Meal.find(params[:id])
    @meal.week_days.select{|item| item[:date] == Date.today}
    authorize @meal
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
      redirect_to dashboard_index_path
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
  @filtered_meals = []
    all_meals.each do |meal|
      meal.week_days.each do |weekday|
        if weekday.date == Date.today && weekday.last_order_time > Time.now
          @filtered_meals << weekday.meal
        end
      end
    end
    @filtered_meals
  end



  def meal_params
    params.require(:meal).permit(:name, :description, :address, :price, :grams_per_dose, :ingredients)
  end

  def set_meals
    @meal = Meal.find(params[:id])
    authorize @meal
  end

end
