class Prank < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :user
  validates :name, presence: true
  validates :content, presence: true
  validates :price, presence: true
  validates :city, presence: true
end
