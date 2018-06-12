class MealsController < ApplicationController
  before_action :set_meals, only: [:show, :edit, :destroy, :update]
  skip_before_action :authenticate_user!, only: [ :index, :show]
  #layout 'map', only: :index

  def index
    @meals = policy_scope(Meal).order(created_at: :desc)
    authorize @meals

    @meals = Meal.all
    # Query location in search bar
    @meals = Meal.near(params[:location], 5, order: 'distance') if params[:location].present?
    @max_price_cents = 3000
    @max_distance = 10
    @meals = @meals.price_cents(params[:price]) if params[:price].present?
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


    respond_to do |format|
      format.html {render layout: "map"}
      format.js
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


  private

  def meal_params
    params.require(:meal).permit(:name, :description, :address, :price, :grams_per_dose, :ingredients)
  end

  def set_meals
    @meal = Meal.find(params[:id])
    authorize @meal
  end

end
