class OrderPolicy < ApplicationPolicy

  def show?
    true
  end

  # def new?
  # end

  def create?
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
