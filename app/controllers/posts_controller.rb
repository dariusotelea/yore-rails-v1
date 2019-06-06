  class PostsController < ApplicationController
    def index
      posts = Post.all
      render json: PostSerializer.new(posts).serialized_json
    end

    def show
      post = Post.find(params[:id])
      render json: PostSerializer.new(post).serialized_json
    end

    def create
      post = Post.new(post_params)
      post.save
      render json: PostSerializer.new(post).serialized_json
    end

    def update
      post = Post.find(params[:id])
      post.update(post_params)
      render json: PostSerializer.new(post).serialized_json
    end

    def destroy
      post = Post.find(params[:id])
      post.destroy
      render json: PostSerializer.new(post).serialized_json
    end

    private

    def post_params
      json_api_params(:comment_type, :description)
    end
  end
