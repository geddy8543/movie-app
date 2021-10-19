class Movie < ApplicationRecord
  def all_movies
    movies = Movie.all
    return movies
  end

  def one_movie
    movie_id = params[:id]
    movie = Movie.find_by(id: movie_id)
    render json: movie.as_json
  end
end
