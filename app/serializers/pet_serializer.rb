class PetSerializer < ActiveModel::Serializer
  attributes :id, :name, :species, :age, :color, :gender, :owner
  belongs_to :user
end
