class User < ApplicationRecord
  has_one :cellar, dependent: :destroy
end
