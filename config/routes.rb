Rails.application.routes.draw do
  root 'rooms#index'
  # get 'rooms/index'
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  delete '/signout', to: 'sessions#destroy'
  resources :rooms
  resources :users
  resources :rooms do
    resources :messages
  end
end