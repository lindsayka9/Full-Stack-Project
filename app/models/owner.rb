# frozen_string_literal: true

class Owner < ApplicationRecord
  has_many :pets, dependent: :destroy
  belongs_to :user
  # has_one :user
  validates :name, :user, presence: true
end
