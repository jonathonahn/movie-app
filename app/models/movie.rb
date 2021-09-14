class Movie < ApplicationRecord
  has_many :actors
  has_many :movie_genres 
  has_many :genres, through: :movie_genres
  validates :title, presence: true 

  def genre_names
    genre_array = []
    for a in genres do
      genre_array << a[:name]
    end
    return genre_array
  end

end
