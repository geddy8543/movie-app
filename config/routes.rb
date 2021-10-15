Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/actor_path", controller: "actors", action: "all_actors"
  get "/single_actor/:id", controller: "actors", action: "single_actor"
end
