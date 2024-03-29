class MoviesController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    movies = Movie.all
    render json: movies
  end

  def create
    movie = Movie.new(
      title: params["title"],
      year: params[year],
      plot: params["plot"],
      director: params["director"],
      english: params["english"],
    )
    movie.save
    render json: movie
  end

  def show
    movie_id = params[:id].to_i
    movie = Movie.find_by(id: movie_id)
    render json: movie
  end

  def update
    movie_id = params["id"]
    movie = Movie.find_by(id: movie_id)
    movie.title = params["title"] || movie.title
    movie.year = params[year] || movie.year
    movie.plot = params["plot"] || movie.plot
    movie.director = params["director"] || movie.director
    render json: movie
  end

  def destroy
    movie_id = params["id"]
    movie = Movie.find_by(id: movie_id)
    movie.destroy
    render json: { message: "Movie successfully destroyed!" }
  end
end
