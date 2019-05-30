# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :comments
      resources :categories
      resources :courses
      resources :users
      resources :favorites, except: [:destroy]
      delete '/favorites', to: 'favorites#destroy'
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end
end
