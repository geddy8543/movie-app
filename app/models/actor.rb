class Actor < ApplicationRecord
  validates :first_name, presence: true, length: { greater_than: 2 }
  validates :last_name, length: { greater_than: 2 }
  validates :known_for, presence: true
end
