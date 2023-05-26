# frozen_string_literal: true

class User < ApplicationRecord
  has_one :cellar, dependent: :destroy
end
