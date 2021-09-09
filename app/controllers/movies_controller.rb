class MoviesController < ApplicationController
  def index
    movies = Movie.all 
    render json: movies
  end

  def create
    movie = Movie.new(title: "#{params[:title]}", year: params[:year], plot: "#{params[:plot]}", director: "#{params[:director]}", english: "#{params[:english]}")
    if movie.save 
      render json: movie
    else
      render json: movie.errors.full_messages
    end
  end

  def show
    movie = Movie.find(params[:id])
    render json: movie
  end

  def update
    movie = Movie.find(params[:id])
    movie.title = params[:title] || movie.title 
    movie.year = params[:year] || movie.year 
    movie.plot = params[:plot] || movie.plot 
    movie.english = params[:english] || movie.english
    movie.director = params[:director] || movie.director
    if movie.save 
      render json: movie
    else
      render json: movie.errors.full_messages
    end
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
    render json: movie
  end

  def movies_ordered_by_year
    movies = Movie.order(year: :asc)
    render json: movies
  end

end
