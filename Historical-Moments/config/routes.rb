Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

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
  get '/events/:id', to: 'events#show', as: 'event'
  get '/events/:id/edit', to: 'events#edit', as: 'edit_event'
  patch '/events/:id', to: 'events#update'
  delete '/events/:id', to: 'events#destroy'

end
