Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/cooks', to: 'pages#cooks'
  get '/profile', to: 'pages#profile'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :meals do
    resources :reviews, only: [:new, :create]
  end

  resources :orders



end
