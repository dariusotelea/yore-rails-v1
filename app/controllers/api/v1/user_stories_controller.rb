module Api::V1
  class UserStoriesController < ApplicationController

    def index
      user_stories = UserStory.all
      render json: UserStorySerializer.new(user_stories).serialized_json
    end

    def show
      user_story = UserStory.find(params[:id])
      render json: UserStorySerializer.new(user_story).serialized_json
    end

    def create
      user_story = UserStory.new(user_story_params)
      user_story.save
      render json: UserStorySerializer.new(user_story).serialized_json
    end

    def update
      user_story = UserStory.find(params[:id])
      user_story.update(user_story_params)
      render json: UserStorySerializer.new(user_story).serialized_json
    end

    def destroy
      user_story = UserStory.find(params[:id])
      user_story.destroy
      render json: UserStorySerializer.new(user_story).serialized_json
    end

    private

    def user_story_params
      json_api_params(:user_id, :story_id)
    end

  end
end
