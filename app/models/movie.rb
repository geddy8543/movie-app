class Movie < ApplicationRecord
  validates :title, presence: true, length: { minimum: 2 }
  validates :year, presence: true
  validates :director, presence: true

  has_many :actors #returns array of many actors
end
