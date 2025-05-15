class Review < ApplicationRecord
  belongs_to :car

  validates :comment, presence: true
  validates :rating, presence: true
end
