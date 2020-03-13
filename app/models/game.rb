class Game < ApplicationRecord
 include PgSearch::Model
  pg_search_scope :search_by_name, against: [ :name ],
  using: {
    tsearch: { prefix: true }
  }

  belongs_to :user
  has_many :rentals, dependent: :destroy
  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  validates :name, presence: true
  validates :price_per_day, presence: true
end
