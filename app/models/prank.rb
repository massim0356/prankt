class Prank < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :user
  validates :name, presence: true
  validates :content, presence: true
  validates :price, presence: true
  validates :city, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_name_content_city, against: {
    name: 'A',
    content: 'B',
    city: 'C'
  },
    using: {
      tsearch: { prefix: true }
    }
end
