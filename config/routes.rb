Rails.application.routes.draw do
  resources :recipes
  resources :users
  post '/signup', to: 'users#create'
  post '/login', to: 'sessions#create'
  post '/recipes', to: 'recipes#create'
  get '/me', to: 'users#show'
  delete "/logout", to: "sessions#destroy"









  # DELETE FOR TESTING USES ONLY

  # resources :users, only: [:index]
end
