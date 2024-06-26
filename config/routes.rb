Rails.application.routes.draw do

  resources :users
    put '/users/:id', to: 'users#update', as: 'update_user'

  root controller: :welcome, action: :index

  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/signup', to: 'users#signup'
  post '/signup', to: 'users#create'

  get '/users/:id', to: 'users#show', as: 'id'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
