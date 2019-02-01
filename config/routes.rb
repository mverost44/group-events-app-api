# frozen_string_literal: true

Rails.application.routes.draw do
  resources :attending_members
  resources :group_members
  resources :events
  resources :groups, except: %i[new edit]
  # RESTful routes
  resources :examples, except: %i[new edit]
  # group custom routes
  delete '/groups/:id' => 'groups#destroy'
  get '/organized-groups' => 'groups#show'
  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end
