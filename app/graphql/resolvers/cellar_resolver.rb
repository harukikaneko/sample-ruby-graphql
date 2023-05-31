# frozen_string_literal: true

module Resolvers
  class CellarResolver < GraphQL::Schema::Resolver
    type Types::CellarType, null: false

    argument :id, ID, required: true

    def resolve(id:)
      Cellar.find(id)
    end
  end

  class CellarsResolver < GraphQL::Schema::Resolver
    type [Types::CellarType], null: false

    def resolve
      Cellar.all
    end
  end
end
