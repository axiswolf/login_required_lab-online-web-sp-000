Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/login' => 'sessions#new'
  post '/login' => 'secrets#show'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
end
