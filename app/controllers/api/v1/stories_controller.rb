module Api::V1
  class StoriesController < ApplicationController

    def index
      stories = Story.all
      render json: StorySerializer.new(stories).serialized_json
    end

    def show
      story = Story.find(params[:index])
      render json: StorySerializer.new(story).serialized_json
    end

    def create 
      story = Story.new(story_params)
      story.save
      render json: StorySerializer.new(story).serialized_json
    end

    def update
      story = Story.find(params[:id])
      story.update(story_params)
      render json: StorySerializer.new(story).serialized_json
    end

    def destroy
      story = Story.find(params[:id])
      story.destroy
      render json: StorySerializer.new(story).serialized_json
    end

    private

    def story_params
      json_api_params(:description, :picture)
    end
  end
end
