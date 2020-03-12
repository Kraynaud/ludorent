class GamePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true  # Anyone can view all game
  end

  def show?
    true  # Anyone can view a game
  end

  def create?
    true  # Anyone can create a game
  end

  def update?
    record.user == user # Only game creator can update it
  end

  def destroy?
    record.user == user # Only game creator can delete it
  end
end
