Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/all_movies", controller: "movies", action: "all_movies"
  get "/find_by_title/:title", controller: "movies", action: "find_by_title"
  get "/movies_ordered_by_year", controller: "movies", action: "movies_ordered_by_year"
  get "/movies/query" => "movies#show" #find movie by id, by query

  get "/movies" => "movies#index" #RESTful routes
  post "/movies" => "movies#create"
  get "/movies/:id" => "movies#show" 
  patch "/movies/:id" => "movies#update"
  delete "/movies/:id" => "movies#destroy"

  get "/actors" => "actors#index" #RESTful routes
  post "/actors" => "actors#create"
  get "/actors/:id" => "actors#show" 
  patch "/actors/:id" => "actors#update"
  delete "/actors/:id" => "actors#destroy"

  get "/actors/:id/movie_plot/" => "actors#show_movie_plot"

  post "/users" => "users#create"
  post "/sessions" => "sessions#create"

end
