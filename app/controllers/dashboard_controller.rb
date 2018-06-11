class DashboardController < ApplicationController
  def index
    @week_day = WeekDay.new
    @today = Date.today
    @my_meals = policy_scope(Meal).where(cook_id: current_user.id)
    @my_orders = policy_scope(Order).all
    authorize @my_orders
    @items = policy_scope(Item).all


    authorize @my_meals
  end
end
