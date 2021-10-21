Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/actors" => "actors#index"
  get "/movies" => "movies#index"
  get "/movies/:id" => "movies#show"
  post "/actors" => "actors#create"
end

###Params examples
get "/query_params" => "actors#query_params"
get "/segment_params/:single_actor" => "actors#segment_params"
post "body_params" => "actors#body_params"
