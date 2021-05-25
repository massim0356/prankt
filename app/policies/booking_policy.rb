class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      user.bookings
    end
  end
  def create?
    true
  end
end
