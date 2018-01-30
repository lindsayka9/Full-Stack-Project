# frozen_string_literal: true

class Owner < ApplicationRecord
  has_many :pets, dependent: :destroy
  belongs_to :user
  validates :name, presence: true
end
