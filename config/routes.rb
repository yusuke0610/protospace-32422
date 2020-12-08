Rails.application.routes.draw do
  devise_for :users
  # resources :users only: [:index ,:new ,:create ,:destroy] 
  resources :prototypes

  root to: "prototypes#index"
  get "/users/sign_up", to: "devise/registrations#new"
  post "/users/" ,to: "devise/registrations#create"

  get "/users/sign_in", to: "devise/sessions#new"
  post "/users" ,to: "devise/sessions#create"
  get "/users/sign_out", to: "devise/sessions#destroy"
  
end
