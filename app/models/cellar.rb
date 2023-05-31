# frozen_string_literal: true

class Cellar < ApplicationRecord
  belongs_to :user
  belongs_to :wine
end
