class Genre < ApplicationRecord
  has_many :movies
  has_many :movie_genres
end
