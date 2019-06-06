class PostSerializer
  include FastJsonapi::ObjectSerializer
  attributes :comment_type, :description
  belongs_to :user
  has_many :comments
end