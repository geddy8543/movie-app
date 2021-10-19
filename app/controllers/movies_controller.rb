class MoviesController < ApplicationController
  get "/movies" => "movies#index"
  get "/movies/:id" => "movies#show"
end
