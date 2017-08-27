Rails.application.routes.draw do
  resources :users
  resources :genres, :links

  root :to => 'pages#home'              # Replace this with whatever you want your root_path to be.
                                        # This path is where unauthorized users will be redirected_to.
  get '/login' => 'session#new'         # This will be our sign-in page.
  post '/login' => 'session#create'     # This will be the path to which the sign-in form is posted
  delete '/login' => 'session#destroy'

  get '/profile' => 'profile#index'
  get '/profile/create' => 'profile#create' # TODO this isn't needed. only edit is.

  get '/links/feed' => 'links#feed'
  get '/links/new' => 'links#new'

  get '/genres' => 'genres#index'
  get '/genres/new' => 'genres#new'
  post '/genres/create' => 'genres#create'
  delete '/genres/destroy' => 'genres#destroy'

  # to get the links working we must define each 'url#view'

  # '/' = home
  # '/login' = login
  # '/profile' = profile
  # '/links' = links

#   Rails.application.routes.draw do
#   get '/planets' => 'planets#index'
#   get '/planets/new' => 'planets#new', :as => 'planet_new'
#   post '/planets' => 'planets#create'
#   get '/planets/:id' => 'planets#show', :as => 'planet'
#   post '/planets/:id/delete' => 'planets#destroy', :as => 'planet_delete'
#   get '/planets/:id/edit' => 'planets#edit', :as => 'planet_edit'
#   post '/planets/:id' => 'planets#update'




end
