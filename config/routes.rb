Rails.application.routes.draw do
  root 'destinations#index'
  resources :destinations do 
    resources :posts, shallow: true
  end

  # get "/posts", to: "posts#index"
  # get "/posts/new", to: "posts#new"
  # get "/posts/:id", to: "posts#show", as: :post #to show all of the posts
  # post "/posts", to: "posts#create"
  post "prefrences/:destination_id", to: "preferences#create"
  resources :users
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  get "/login", to: "sessions#new"
  delete "/logout", to: "sessions#destroy"
  delete "/posts/:id", to: "posts#destroy", as: :destroy_post
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
