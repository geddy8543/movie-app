Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/actors" => "actors#index"
  get "/movies" => "movies#index"
  get "/movies" => "movies#create"
  get "/movies/:id" => "movies#show"
  patch "/movies/:id" => "movies#update"
  delete "/movies/:id" => "movies#destroy"

  ### actors routes
  post "/actors" => "actors#create"
  get "/actors/:id" => "actors#show"
  patch "/actors/:id" => "actors#update"
  delete "/actors/:id" => "actors#destroy"

  ###Params examples
  get "/query_params" => "actors#query_params"
  get "/segment_params/:single_actor" => "actors#segment_params"
  post "body_params" => "actors#body_params"

  ### user routes
  post "/users" => "users#create"

  ### sessions routes
  post "/sessions" => "sessions#create"
end
