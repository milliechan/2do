Types::PostType = GraphQL::ObjectType.define do
  name "Post"
  description "A todo post"
  # `!` marks a field as "non-null"
  field :id, !types.ID
  field :title, !types.String
end
