# frozen_string_literal: true

module Resolvers
  class WineryResolver < GraphQL::Schema::Resolver
    type Types::WineryType, null: false

    argument :id, ID, required: true

    def resolve(id:)
      Winery.find(id)
    end
  end

  class WineriesResolver < GraphQL::Schema::Resolver
    type [Types::WineryType], null: false

    def resolve
      Winery.all
    end
  end
end
