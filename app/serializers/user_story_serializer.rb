class UserStorySerializer
  include FastJsonapi::ObjectSerializer
  attributes :user_id, :story_id
end
