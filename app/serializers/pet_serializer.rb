class PetSerializer < ActiveModel::Serializer
  attributes :id, :name, :species, :age, :color, :gender, :owner
  # has_one :user
end
