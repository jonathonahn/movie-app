Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/all_movies", controller: "movies", action: "all_movies"
  get "/find_by_title/:title", controller: "movies", action: "find_by_title"
  get "/movies_ordered_by_year", controller: "movies", action: "movies_ordered_by_year"
  get "/movies" => "movies#index"
  get "/movies/query" => "movies#show" #find movie by id, by query
  get "/movies/:id" => "movies#show" 
  post "/movies" => "movies#show" #find movie by id, parameter == :id
end
