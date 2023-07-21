Rails.application.routes.draw do
  # Routes for User actions
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :recipes

  # resources :users, only: [:create]

  post '/signup', to: 'users#create'
  get '/me', to: 'users#show'
end
