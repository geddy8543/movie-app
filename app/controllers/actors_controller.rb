class ActorsController < ApplicationController
  def all_actors
    actor = Actor.all
    render json: actor.as_json
  end

  def single_actor
    single_actor = params[:id]
    actor = Actor.find_by(id: single_actor)
    render json: actor.as_json
  end
end
