# frozen_string_literal: true

class OwnerSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :phone_number
end
