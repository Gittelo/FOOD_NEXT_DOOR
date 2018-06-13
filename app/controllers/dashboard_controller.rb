class DashboardController < ApplicationController
  def index
    @week_day = WeekDay.new
    @today = Date.today
    @my_meals = policy_scope(Meal).where(cook_id: current_user.id)
    authorize @my_meals

    @orders = policy_scope(Order).all
    authorize @orders
    @my_orders = []
    @orders.each do |order|
      if order.user == current_user
        @my_orders << order
      end
    end
    @my_orders

    @items = policy_scope(Item).all
    @items_from_cook = []
    @items.each do |item|
      if item.meal.cook == current_user
        @items_from_cook << item
      end
    end
    @items_from_cook
  end

end


