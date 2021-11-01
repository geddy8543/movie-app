class CreateMovieGenres < ActiveRecord::Migration[6.1]
  has_many :movies
  has_many :genres

  def change
    create_table :movie_genres do |t|
      t.integer :genre_id
      t.integer :movie_id

      t.timestamps
    end
  end
end
