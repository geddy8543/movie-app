class ActorsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    actor = Actor.all
    render json: actor.as_json
  end

  def create
    actor = Actor.new(
      first_name: params["first_name"],
      last_name: params["last_name"],
      known_for: params["known_for"],
      age: params["age"],
      gender: params["gender"],
      movie_id: params[:movie_id],
    )
    actor.save
    render json: actor.as_json
  end

  def show
    actor_id = params["id"]
    actor = Actor.find_by(id: actor_id)
    render json: actor.as_json
  end

  def update
    actor_id = params["id"]
    actor = Actor.find_by(id: actor_id)
    actor.first_name = params["first_name"] || actor.first_name
    actor.last_name = params["last_name"] || actor.last_name
    actor.known_for = params["known_for"] || actor.known_for
    actor.gender = params["gender"] || actor.gender
    actor.age = params["age"] || actor.age
    actor.movie_id = params[:movie_id] || actor.movie_id

    render json: actor.as_json
  end

  def destroy
    actor_id = params["id"]
    actor = Actor.find_by(id: actor_id)
    actor.destroy
    render json: { message: "Actor successfully destroyed!" }
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
