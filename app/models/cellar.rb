# frozen_string_literal: true

class Cellar < ApplicationRecord
  belongs_to :user
  has_many :wines, dependent: :destroy
end
