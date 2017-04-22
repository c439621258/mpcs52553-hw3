Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'places#index'
  get '/places/new' => 'places#new'
  post '/places' => 'places#create'

  get '/places/:id/edit' => 'places#edit'
  patch '/places/:id' => 'places#update'

  get '/places' => 'places#index'
  get '/places/:id' => 'places#show'

  delete '/places/:id' => 'places#delete'
end
