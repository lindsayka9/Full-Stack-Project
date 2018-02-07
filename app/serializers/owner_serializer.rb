# frozen_string_literal: true

class OwnerSerializer < ActiveModel::Serializer
  attributes :id, :name, :phone_number
  has_many :pets
  belongs_to :user
end
