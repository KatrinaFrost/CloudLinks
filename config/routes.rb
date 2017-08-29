Rails.application.routes.draw do

# ------------- Root to home ---------------- #

  root :to => 'pages#home'

  # ------------- Resources ----------------- #
  resources :users
  resources :genres
  resources :links

  # ------------- Log in ------------------- #
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  # ------------- Profile ------------------- #
  get '/profile' => 'profile#index'
  get '/profile/create' => 'profile#create'
  post '/profile/create' => 'profile#index'

  # ------------- Feed ------------------- #
  get '/pages/feed' => 'pages#feed'

end
