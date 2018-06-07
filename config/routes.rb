Rails.application.routes.draw do
  get 'carts/show'
  devise_for :users
  root to: 'pages#home'
  get '/cooks', to: 'pages#cooks'
  get '/profile', to: 'pages#profile'
<<<<<<< HEAD
  get "/become_cook", to: "pages#apply"
=======
  get '/confirmation', to: 'orders#confirmation'
>>>>>>> d81ab5a363f8f855940d8c6299fd69252e8e335d

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :meals do
    resources :reviews, only: [:new, :create]
    resources :items, only: [:new, :create]

    collection do
      get :my_repository
    end
  end

  resources :orders, only: [:create, :show] do
    resources :payments, only: [:new, :create]
  end

end
