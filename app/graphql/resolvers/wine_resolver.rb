# frozen_string_literal: true

module Resolvers
  class WineResolver < GraphQL::Schema::Resolver
    type Types::WineType, null: false

    argument :id, ID, required: true

    def resolve(id:)
      Wine.find(id)
    end
  end

  class WinesResolver < GraphQL::Schema::Resolver
    type [Types::WineType], null: false

    def resolve
      Wine.all
    end
  end
end
