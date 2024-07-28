Rails.application.routes.draw do

  resources :users
    put '/users/:id', to: 'users#update', as: 'update_user'

  root controller: :welcome, action: :index

  get '/about', to: 'about#about'
  
  get '/services', to: 'services#services'

  get '/contact', to: "contact#contact"
  resources :contact, only: %i[contact create]
  
  

  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/signup', to: 'users#signup'
  post '/signup', to: 'users#create'

  get '/users/:id', to: 'users#show', as: 'id'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
