Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/', to: 'home#index', as: :home

  get '/signup', to: 'users#new', as: :signup
  resources :users

  get '/login', to: 'sessions#new', as: :login
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: :logout

  get '/animals/new', to: 'animals#new', as: :create_animal
  post '/animals', to: 'animals#create'
end
