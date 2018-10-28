class Spree::GraphQL::Schema::Schema < GraphQL::Schema
  query ::Spree::GraphQL::Schema::Types::QueryRoot
  mutation ::Spree::GraphQL::Schema::Types::Mutation

  #def self.resolve_type(type, obj, ctx)
  #end

  #def self.object_from_id(node_id, ctx)
  #end

  #def self.id_from_object(object, type, ctx)
  #end
end
