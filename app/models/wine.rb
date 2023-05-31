# frozen_string_literal: true

class Wine < ApplicationRecord
  has_many :cellar
  has_many :user, through: :cellar
  belongs_to :winery
end
