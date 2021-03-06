# frozen_string_literal: true

Rails.application.routes.draw do
  # RESTful routes
  resources :quotes, except: %i[new edit]
  resources :solved_quotes, except: %i[new edit update]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end
