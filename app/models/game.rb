class Game < ApplicationRecord
  belongs_to :user
  has_many :rentals
  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode
end
