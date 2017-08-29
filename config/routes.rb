Rails.application.routes.draw do

  root :to => 'pages#home'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  resources :users
  resources :genres
  resources :links

  get '/profile' => 'profile#index'
  get '/profile/create' => 'profile#create'

end
