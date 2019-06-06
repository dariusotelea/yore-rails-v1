  class CommentsController < ApplicationController
    def index
      comment = Comment.all
      render json: CommentSerializer.new(comment).serialized_json
    end

    def show
      comment = Comment.find(params[:id])
      render json: CommentSerializer.new(comment).serialized_json
    end

    def create
      comment = Comment.new(comment_params)
      comment.save
      render json: CommentSerializer.new(comment).serialized_json
    end

    def update
      comment = Comment.find(params[:id])
      comment.update(comment_params)
      render json: CommentSerializer.new(comment).serialized_json
    end

    def destroy
      comment = Comment.find(params[:id])
      comment.destroy
      render json: CommentSerializer.new(comment).serialized_json
    end

    private

    def comment_params
      json_api_params(:content, :likes)
    end
  end
