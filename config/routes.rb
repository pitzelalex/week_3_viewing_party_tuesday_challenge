Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'welcome#index'

  get '/register', to: 'users#new'
  get '/login', to: "users#login_form"
  post '/login', to: "users#login_user"
  get '/logout', to: 'users#logout_user'
  get '/dashboard', to: 'users#show'
  post '/users', to: 'users#create'
  get '/movies', to: 'movies#index', as: 'movies'
  get '/movies/:id', to: 'movies#show', as: 'movie'
  get '/movies/:movie_id/viewing_parties/new', to: 'viewing_parties#new'
  post '/movies/:movie_id/viewing_parties', to: 'viewing_parties#create'
  resources :users, only: :show
end
