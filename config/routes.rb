Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "descriptions#index"

  get "/descriptions" => "descriptions#index"
  get "/descriptions/new/:tid" => 'descriptions#new'
  post "/descriptions" => 'descriptions#create'
  #get "/descriptions/:id" => 'descriptions#show'
  #delete "/descriptions/:id" => 'descriptions#destroy'
  #get "/descriptions/:id/edit" => 'descriptions#edit'
  #patch "/descriptions/:id" => 'descriptions#update'


end
