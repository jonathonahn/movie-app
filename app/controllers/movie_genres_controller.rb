class MovieGenresController < ApplicationController
  def create
    movie_genre = MovieGenre.new(
      genre_id: params[:genre_id],
      movie_id: params[:movie_id]
    )
    if movie_genre.save 
      render json: movie_genre 
    else  
      render json: {message: "failure"}
    end
  end
end
