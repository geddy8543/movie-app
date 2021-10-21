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

  def query_params
    input_value = params["actor"]
    render json: { message: "My favorite actor is #{input_value}" }
  end

  def segment_params
    input_value = params["single_actor"]
    render json: { message: "The url segment is actor #{input_value}" }
  end

  def body_params
    input_value = params["single_actor"]
    render json: { message: "The actor is #{input_value}" }
  end
end
