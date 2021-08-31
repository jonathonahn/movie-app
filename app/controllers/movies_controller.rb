class MoviesController < ApplicationController
  def index
    movies = Movie.all 
    render json: movies.as_json
  end

  def create
    movie = Movie.new(title: "#{params[:title]}", year: params[:year], plot: "#{params[:plot]}")
    movie.save 
    render json: movie.as_json
  end

  def show
    movie = Movie.find(params[:id])
    render json: movie.as_json
  end

  def update
    movie = Movie.find(params[:id])
    movie.title = params[:title] || movie.title 
    movie.year = params[:year] || movie.year 
    movie.plot = params[:plot] || movie.plot 
    movie.save 
    render json: movie.as_json
  end

  def destroy
    movie = Movie.find(params[:id])
    movie.destroy 
    render json: {
      message: "movie destroyed"
    }
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
