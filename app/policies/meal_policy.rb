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
    true
  end

  def destroy?
    true
  end

  private

  def user_is_cook?
    user == record.user_is_cook
  end

  class Scope < Scope
    def resolve
      scope
    end
  end
end
