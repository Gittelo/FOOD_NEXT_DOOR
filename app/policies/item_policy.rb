class ItemPolicy < ApplicationPolicy
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
    false
  end

  def destroy?
    true
  end

  private

  # def user_is_client?
  #   user == record.user
  # end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
