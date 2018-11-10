class Spree::GraphQL::Schema::Types::BaseObjectNode < GraphQL::Schema::Object
  global_id_field :id
  implements ::GraphQL::Relay::Node.interface
  include ::Spree::GraphQL::Types::BaseObject
end