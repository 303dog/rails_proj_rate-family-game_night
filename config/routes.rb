Rails.application.routes.draw do
  root 'users#index'

  get '/signup', to: 'users#new'
  get '/signup', to: 'users#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: "sessions#destroy"
  
  resources :users 
  resources :reviews

  resources :reviews do 
    resources :users
  end

  get '/auth/:provider/callback', to: 'sessions#omniauth'
  
  resources :games do
    resources :reviews
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end