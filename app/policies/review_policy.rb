class ReviewPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true # Anyone can see a review
  end

  def create?
    true  # Anyone can create a rental
  end

  def destroy?
    record.user == user # Only review creator can delete it
  end
end
