Rails.application.routes.draw do
  get 'sessions/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #login
  get '/login', to: "sessions#new", as: "new_session"
  post '/sessions', to: "sessions#create", as: "sessions"
  delete '/sessions', to: "sessions#destroy"

  #users
  get '/users/new', to: 'users#new', as: 'new_user'
  post '/users', to: 'users#create'

  #historicalmoments
  get '/historicalmoments', to: 'historical_moments#index', as: 'historical_moments'
  get '/historicalmoments/new', to: 'historical_moments#new', as: 'new_historical_moment'
  post '/historicalmoments', to: 'historical_moments#create'
  get '/historicalmoments/:id', to: 'historical_moments#show', as: 'historical_moment'
  get '/historicalmoments/:id/edit', to: 'historical_moments#edit', as: 'edit_historical_moment'
  patch '/historicalmoments/:id', to: 'historical_moments#update'
  delete '/historicalmoments/:id', to: 'historical_moments#destroy'

  #events
  get '/events', to: 'events#index', as: 'events'
  get '/events/new', to: 'events#new', as: 'new_event'
  post '/events', to: 'events#create'
  get '/events/:id', to: 'events#show', as: "event"
  get '/events/:id/edit', to: 'events#edit', as: 'edit_event'
  patch '/events/:id', to: 'events#update'
  delete '/events/:id', to: 'events#destroy'

  #documents

  get "/documents", to: "documents#index", as: "documents"
  get "/documents/new", to: "documents#new", as: "new_document"
  get "/documents/:id", to: "documents#show", as: "document"
  post "/documents", to: "documents#create"
  get "/documents/:id/edit", to: "documents#edit", as: "edit_document"
  patch "/documents/:id", to: "documents#update"
  delete "/documents/:id", to: "documents#destroy"

   #actors

   get "/actors", to: "actors#index", as: "actors"
   get "/actors/new", to: "actors#new", as: "new_actor"
   get "/actors/:id", to: "actors#show", as: "actor"
   post "/actors", to: "actors#create"
   get "/actors/:id/edit", to: "actors#edit", as: "edit_actor"
   patch "/actors/:id", to: "actors#update"
   delete "/actors/:id", to: "actors#destroy"

   #locations
   get "/locations/new", to: "locations#new", as: "new_location"
   post "/locations/", to: "locations#create"

end
