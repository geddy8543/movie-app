Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/actor_path", controller: "actors", action: "all_actors"
  get "/single_actor/:id", controller: "actors", action: "single_actor"
  get "/movie_path", controller: "movies", action: "all_movies"
  get "/movies" => "movies#index"
  get "/movies/:id" => "movies#show"
end

###Params examples
get "/query_params" => "actors#query_params"
get "/segment_params/:single_actor" => "actors#segment_params"
post "body_params" => "actors#body_params"
