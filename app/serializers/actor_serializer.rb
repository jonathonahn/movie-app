class ActorSerializer < ActiveModel::Serializer
  attributes :first_name, :last_name, :known_for, :gender, :age, :image
  belongs_to :movie
end
