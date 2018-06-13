class DashboardController < ApplicationController
  def index
    @week_day = WeekDay.new
    @today = Date.today
    @my_meals = policy_scope(Meal).where(cook_id: current_user.id)
    @my_orders = policy_scope(Order).all
    authorize @my_orders
    @items = policy_scope(Item).all


    @items_from_cook = []
    @items.each do |item|
      if item.meal.cook == current_user
        @items_from_cook << item
      end
    end
    @items_from_cook
    authorize @my_meals
  end

  def mark_as_delivered(item)
    item.order.status = 'delivered'
  end

end


