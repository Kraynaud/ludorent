class RentalPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    record.user == user # Only rentals creator can see them
  end

  def show?
    record.user == user # Only rental creator can see it
  end

  def create?
    true  # Anyone can create a rental
  end

  def destroy?
    record.user == user # Only rental creator can delete it
  end
end
