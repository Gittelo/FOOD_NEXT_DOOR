class DashboardController < ApplicationController
  def index
    @meals = Meal.where(user_id: current_user.id)
  end
end
