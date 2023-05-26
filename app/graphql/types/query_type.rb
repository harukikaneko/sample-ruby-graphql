# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :user, resolver: Resolvers::UserResolver
    field :users, resolver: Resolvers::UsersResolver
    field :wine, resolver: Resolvers::WineResolver
    field :wines, resolver: Resolvers::WinesResolver
  end
end
