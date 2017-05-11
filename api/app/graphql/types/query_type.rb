Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  description "The query root of this schema"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  field :post do
    type Types::PostType
    argument :id, !types.ID
    description "Find a Post by ID"
    resolve ->(obj, args, ctx) { Post.find(args[:id]) }
  end

  field :posts do
    type Types::PostType
    description "Find all Posts"
    resolve ->(obj, args, ctx) { Post.all }
  end
end
