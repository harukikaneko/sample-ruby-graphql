# frozen_string_literal: true

module Types
  class WineType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :vitage, Integer
    field :wine_type, String
    field :grape, String
    field :country, String
    field :region, String
    field :winery_id, Integer
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
