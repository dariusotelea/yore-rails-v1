module Api::V1
  class UsersController < ApplicationController
    def index
      users = User.all
      render json: UserSerializer.new(users).serialized_json
    end

    def show
      user = User.find(params[:id])
      render json: UserSerializer.new(user).serialized_json
    end

    def create
      user = User.new(user_params)
      user.save
      render json: UserSerializer.new(user).serialized_json
    end

    def update
      user = User.find(params[:id])
      user.update(user_params)
      render json: UserSerializer.new(user).serialized_json
    end

    def destroy
      user = User.find(params[:id])
      user.destroy
      render json: UserSerializer.new(user).serialized_json
    end

    private

    def user_params
      json_api_params(:name)
    end
  end
end