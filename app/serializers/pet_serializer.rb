class PetSerializer < ActiveModel::Serializer
  attributes :id, :name, :species, :age, :color, :gender, :owner
end
