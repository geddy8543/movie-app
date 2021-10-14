class ActorsController < ApplicationController
  def all_actors
    actor = Actor.all
    render json: actor.as_json
  end
end
