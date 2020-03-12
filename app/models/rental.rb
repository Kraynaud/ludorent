class Rental < ApplicationRecord
  belongs_to :game
  belongs_to :user

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :total_price, presence: true
end
