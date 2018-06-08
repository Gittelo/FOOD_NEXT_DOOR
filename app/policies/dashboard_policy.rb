class DashboardPolicy < ApplicationPolicy

  def index?
    true
  end

  private

  # def user_has_meals?
  #   !user.meals.empty?
  # end

  # def user_is_cook?
  #   user == record.cook
  # end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
