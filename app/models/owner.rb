# frozen_string_literal: true

class Owner < ApplicationRecord
  has_many :pets
  belongs_to :user
  validates :first_name, presence: true
  validates :last_name, presence: true
end
