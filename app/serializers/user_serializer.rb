class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :full_name, :email, :password, :picture
  has_many :posts
end
