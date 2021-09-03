class MovieSerializer < ActiveModel::Serializer
  attributes :title, :year, :plot, :director, :english
  has_many :actors
end
