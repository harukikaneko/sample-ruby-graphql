class Cellar < ApplicationRecord
    belongs_to :user
    has_many :wines, dependent: :destroy
end
