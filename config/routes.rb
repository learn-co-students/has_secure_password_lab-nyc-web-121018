Rails.application.routes.draw do
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#logout'

  resources :users, only: [:new, :create]
  root 'welcome#home'

end
