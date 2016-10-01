Rails.application.routes.draw do
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only: [:create, :destroy]
  resource :home, only: [:show]

  root to: "home#show"

  resources :profiles, only: [:new, :create]

  resources :matches, only: [:create, :index]

  match '/matches/create', :to => "matches#create", via: [:get, :post]
end
