Rails.application.routes.draw do
  get 'carts/show'
  devise_for :users
  root to: 'pages#home'
  get '/cooks', to: 'pages#cooks'
  get '/profile', to: 'pages#profile'
  get "/become_cook", to: "pages#apply"
  get '/confirmation', to: 'orders#confirmation'
  get '/calendar', to: 'pages#calendar'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :week_days, only: [:new, :create]
  resources :meals do
    resources :reviews, only: [:new, :create]
    resources :items, only: [:new, :create]
  end

  resources :orders, only: [:create, :show] do
    resources :payments, only: [:new, :create]
    resources :items, only: [:destroy]
  end

  resources :dashboard, only: :index

end
