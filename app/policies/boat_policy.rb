class BoatPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
    end
  end

  def show?
    true
  end

  def create?
    true
  end

  def update?
    record.user == user
  end
end
