class Car < ApplicationRecord
  belongs_to :owner
  has_many :reviews
  has_many :favourites

  validates :brand, :model, :year, :fuel, presence: true
  validates :year, numericality: { greater_than_or_equal_to: 1886 }
end
