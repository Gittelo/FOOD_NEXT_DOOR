class UserPolicy < ApplicationPolicy

  def index
    true
  end

  def show?
    true
    # user == record.owner
  end

  class Scope < Scope
    def resolve
      scope
    end
  end
end
