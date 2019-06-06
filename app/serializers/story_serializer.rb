class StorySerializer
  include FastJsonapi::ObjectSerializer
  attributes :description, :picture
end
