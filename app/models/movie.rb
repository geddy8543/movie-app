class Movie < ApplicationRecord
  def index
    movies = Movie.all
    render json: movies.as_json
  end

  def show
    movie_id = params[:id].to_i
    movie = Movie.find_by(id: movie_id)
    render json: movie.as_json
  end
end
