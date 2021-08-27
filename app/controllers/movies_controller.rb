class MoviesController < ApplicationController
  def all_movies
    all_movies = Movie.all 
    render json: Movie.all.as_json
  end

  def find_by_title
    movie = Movie.find_by(title: params[:title])
    render json: movie.as_json
  end

  def movies_ordered_by_year
    movies = Movie.order(year: :asc)
    render json: movies.as_json
  end

end
