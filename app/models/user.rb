# frozen_string_literal: true

class User < ApplicationRecord
  has_many :cellar, dependent: :destroy
  has_many :wine, through: :cellar
end
