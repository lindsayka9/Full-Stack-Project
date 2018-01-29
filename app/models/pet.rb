# frozen_string_literal: true

class Pet < ApplicationRecord
  belongs_to :user
  belongs_to :owner
  validates :name, :user, presence: true
end
