class Game < ApplicationRecord
  belongs_to :user
  has_many :rentals
  has_one_attached :photo

  validates :name, presence: true
  validates :price_per_day, presence: true
end
