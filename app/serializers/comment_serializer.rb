class CommentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :content, :likes
  belongs_to :post
end