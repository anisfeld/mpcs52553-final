Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "descriptions#index"

  get "/projects" => "projects#index"
  get "/projects/new" => 'projects#new'
  post "/projects" => 'projects#create'
  get "/projects/:id" => 'projects#show'
  delete "/projects/:id" => 'projects#destroy'
  get "/projects/:id/edit" => 'projects#edit'
  patch "/projects/:id" => 'projects#update'


  get "/sessions/new" => 'sessions#new'
  post "/sessions" => 'sessions#create'
  get "/logout" => 'sessions#destroy'

  get "/users" => "users#index"
  get "/users/new" => 'users#new'
  post "/users" => 'users#create'
  get "/users/:id" => 'users#show'
  delete "/users/:id" => 'users#destroy'
  get "/users/:id/edit" => 'users#edit'
  patch "/users/:id" => 'users#update'



  get "/descriptions" => "descriptions#index"
  get "/descriptions/new/:tid" => 'descriptions#new'
  post "/descriptions" => 'descriptions#create'
  #get "/descriptions/:id" => 'descriptions#show'
  #delete "/descriptions/:id" => 'descriptions#destroy'
  #get "/descriptions/:id/edit" => 'descriptions#edit'
  #patch "/descriptions/:id" => 'descriptions#update'


end
