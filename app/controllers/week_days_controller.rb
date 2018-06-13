class WeekDaysController < ApplicationController


  #def new
  #  @week_day = WeekDay.new
  #  @meals = current_user.meals
  #  authorize @week_day
  #  authorize = @meals
  #end

  def create
    if WeekDay.where(date: params[:week_day][:date]).empty?
      @week_day = WeekDay.new(week_day_params)
      current_date = {year: params[:week_day][:date].split("-")[0].to_i,
              month: params[:week_day][:date].split("-")[1].to_i,
              day: params[:week_day][:date].split("-")[2].to_i}
      @week_day.pick_up_time_end = @week_day.pick_up_time_end.change(current_date)
      @week_day.pick_up_time_start = @week_day.pick_up_time_start.change(current_date)
      @week_day.last_order_time = @week_day.last_order_time.change(current_date)
      @current_user_meal = Meal.find(params[:week_day][:meal_id])
      @week_day.meal = @current_user_meal
      if @week_day.save
        redirect_to dashboard_index_path
      else
        render :new
      end

    else
      update

    end
    authorize @week_day
    authorize @current_user_meal
  end

  def update
      @week_day = WeekDay.where(date: params[:week_day][:date])[0]
      raise
      @week_day.update(week_day_params)

      current_date = {year: params[:week_day][:date].split("-")[0].to_i,
              month: params[:week_day][:date].split("-")[1].to_i,
              day: params[:week_day][:date].split("-")[2].to_i}

      @week_day.pick_up_time_end = @week_day.pick_up_time_end.change(current_date)
      @week_day.pick_up_time_start = @week_day.pick_up_time_start.change(current_date)
      @week_day.last_order_time = @week_day.last_order_time.change(current_date)

      @current_user_meal = Meal.find(params[:week_day][:meal_id])
      @week_day.meal = @current_user_meal
      raise


      @week_day.save!
      redirect_to dashboard_index_path

  end

  private

  def week_day_params
    params.require(:week_day).permit(:date, :last_order_time, :pick_up_time_start, :pick_up_time_end, :doses, :meal_id)
  end


end
