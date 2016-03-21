Rails.application.routes.draw do
  root to: 'categories#index'
  resources :categories do
    resources :articles
  end

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'
end
