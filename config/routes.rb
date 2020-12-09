Rails.application.routes.draw do
  # ユーザー周りの情報を定義
  devise_for :users

  root to: "prototypes#index"
  # get "/users/sign_up", to: "devise/registrations#new"
  # post "/users/" ,to: "devise/registrations#create"

  # get "/users/sign_in", to: "devise/sessions#new"
  # post "/users" ,to: "devise/sessions#create"
  # get "/users/sign_out", to: "devise/sessions#destroy"

  # get "/prototypes/new"
  # post "/prototypes/create"
  # get "/prototypes/:id", to: 
  
  resources :prototypes do
    resources :comments, only: :create
  end
  resources :users, only: :show
  

  
end
