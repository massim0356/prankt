class Prank < ApplicationRecord
  has_many :bookings
  belongs_to :user
  validates :name, presence: true
  validates :content, presence: true
  validates :price, presence: true
end
