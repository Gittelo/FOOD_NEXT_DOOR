class WeekDaysController < ApplicationController


  def new
    @week_day = WeekDay.new
    authorize @week_day
  end

  def create
    @week_day = WeekDay.new(week_day_params)
    raise
  end

  private

  def week_day_params
    params[:week_day]["date(1i)"] = 3000

    params.require(:week_day).permit(:date, :last_order_time, :pick_up_time_start, :pick_up_time_end, :doses)
  end



end
