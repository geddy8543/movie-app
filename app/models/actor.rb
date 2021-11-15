class Actor < ApplicationRecord
  # validates :first_name, presence: true, length: { minimum: 2 }
  # validates :last_name, length: { minimum: 2 }
  # validates :known_for, presence: true
  # validates :age, presence: true
  # validates :gender, presence: true

  belongs_to :movie  #returns hash of a single movie
end
