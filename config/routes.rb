Rails.application.routes.draw do
  resources :third_parties
  resources :authors
  resources :containerdetails
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  delete '/deleter/:id', to: 'containerdetails#destroy'
  delete '/thirddeleter/:id', to: 'third_parties#destroy'
  
  post '/input', to: 'containerdetails#create'
  get '/display', to: 'containerdetails#index'
  get '/thirdparty', to: 'third_parties#index'
  post '/add', to: 'third_parties#create'

end
