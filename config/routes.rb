# frozen_string_literal: true

Rails.application.routes.draw do
  get 'lists/new'
  get 'lists/create'
  get 'lists/show'
  root 'lists#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :lists, only: %i[index new create show] do
    resources :bookmarks, only: %i[new create]
  end
  resources :bookmarks, only: [:destroy]
end
