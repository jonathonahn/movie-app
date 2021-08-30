class MoviesController < ApplicationController
  def index
    movies = Movie.all 
    render json: movies.as_json
  end

  def show
    movie = Movie.find(params[:id])
    render json: movie.as_json
  end

  def show_by_name
    movie = Movie.find_by(title: params[:title])
    render json: movie.as_json
  end

  def movies_ordered_by_year
    movies = Movie.order(year: :asc)
    render json: movies.as_json
  end

end
