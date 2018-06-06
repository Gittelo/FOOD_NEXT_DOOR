Rails.application.routes.draw do
  get 'carts/show'
  devise_for :users
  root to: 'pages#home'
  get '/cooks', to: 'pages#cooks'
  get '/profile', to: 'pages#profile'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :meals do
    resources :reviews, only: [:new, :create]

    collection do
      get :my_repository
    end
  end

  resources :items, only: [:create, :show] do
    resources :payments, only: [:new, :create]
  end
end
