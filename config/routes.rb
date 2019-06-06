Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :user_stories
      resources :stories
      resources :users
    end
  end
end
