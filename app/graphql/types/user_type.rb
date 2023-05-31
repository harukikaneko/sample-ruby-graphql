# frozen_string_literal: true

module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :email, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :cellar, [CellarType], null: false
    field :wines, [WineType], null: false

    def wines
      Loaders::AssociationLoader.for(object.class, :wine).load(object)
    end
  end
end
