class MealPolicy < ApplicationPolicy

  def index?
    true
  end

  def show?
    true
  end

  # def new?
  # end

  def create?
    true
  end

  # def edit?
  # end

  def update?
    user_is_cook?
  end

  def destroy?
    user_is_cook?
  end

  def my_repository?
    user_has_meals?
  end

  private

  def user_has_meals?
    !user.meals.empty?
  end

  def user_is_cook?
    user == record.cook
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
