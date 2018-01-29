# frozen_string_literal: true

class PetSerializer < ActiveModel::Serializer
  attributes :id, :name, :species, :age, :color, :gender, :owner_id
  has_one :owner
end
