# frozen_string_literal: true

Rails.application.routes.draw do
  resources :attending_members, except: %i[show index]
  resources :group_members, except: %i[show index]
  resources :events, except: %i[new edit]
  resources :groups, except: %i[new edit]
  # RESTful routes
  resources :examples, except: %i[new edit]
  # group custom routes
  get '/attending_members/:id' => 'attending_members#index'
  get '/attending_members' => 'attending_members#show_attending_members'
  get '/group_members' => 'group_members#show_members'
  get '/show_events/:id' => 'groups#show_events'
  delete '/groups/:id' => 'groups#destroy'
  get '/organized-groups' => 'groups#show'
  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end
