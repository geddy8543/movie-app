Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/actor_path", controller: "actors_controller", action: "actor_method"
end
