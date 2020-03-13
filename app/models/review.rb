class Review < ApplicationRecord
  belongs_to :game

  validates :rating, presence: true, inclusion: { in: [0, 1, 2, 3, 4, 5] }
  validates :content, presence: true
end
