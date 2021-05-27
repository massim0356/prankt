class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :prank

  def pending?
    status == 'pending'
  end

  def accepted?
    status == 'accepted'
  end

  def completed?
    status == 'completed'
  end
end
