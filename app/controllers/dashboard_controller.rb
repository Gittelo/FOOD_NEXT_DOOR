class DashboardController < ApplicationController
  def index
    @my_meals = policy_scope(Meal).where(cook_id: current_user.id)
    authorize @my_meals
    @my_orders = policy_scope(Order).all
    authorize @my_orders
    @items = policy_scope(Item).all
  end
end
