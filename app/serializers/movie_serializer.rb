class MovieSerializer < ActiveModel::Serializer
  attributes :title, :year, :plot, :director, :english, :genre_names
  has_many :actors
  # has_many :genres
end
