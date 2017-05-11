CreatePostMutation = GraphQL::Relay::Mutation.define do
  name "CreatePost"

  input_field :id, !types.ID
  input_field :title, !types.String

  return_field :post, PostType

  resolve ->(obj, args, ctx) {
    post = Post.create(args[:title])
    response = {
      post
    }
  }
end
