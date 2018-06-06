Rails.application.routes.draw do
  get 'carts/show'
  devise_for :users
  root to: 'pages#home'
  get '/cooks', to: 'pages#cooks'
  get '/profile', to: 'pages#profile'

  # New routes for the shopping cart
  get 'carts/:id' => "carts#show", as: "cart"
  delete 'carts/:id' => "carts#destroy"

  post 'line_items/:id/add' => "line_items#add_quantity", as: "line_item_add"
  post 'line_items/:id/reduce' => "line_items#reduce_quantity", as: "line_item_reduce"
  post 'line_items' => "line_items#create"
  get 'line_items/:id' => "line_items#show", as: "line_item"
  delete 'line_items/:id' => "line_items#destroy"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :meals do
    resources :reviews, only: [:new, :create]

    collection do
      get :my_repository
    end
  end

  resources :orders, only: [:create, :show] do
    resources :payments, only: [:new, :create]
  end
end
