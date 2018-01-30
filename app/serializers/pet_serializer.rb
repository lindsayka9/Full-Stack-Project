# frozen_string_literal: true

class PetSerializer < ActiveModel::Serializer
  attributes :id, :name, :species, :age, :color, :gender, :owner
  belongs_to :owner
  # has_one :owner
end
