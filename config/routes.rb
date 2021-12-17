Rails.application.routes.draw do
  resources :playerstats, only: :show
  resources :headlines, only: :index

  resources :players, only: [:index, :show]
  resources :teams, only: [:index, :show]
  resources :comments
  resources :posts

  post '/signup', to: 'users#create'
  get "/me", to: "users#show"

  post '/login', to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
