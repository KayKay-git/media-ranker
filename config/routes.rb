Rails.application.routes.draw do
  root to: 'homepages#index'

  resources :users, only: [:index, :show]

  resources :works do
    resources :votes, only: [:create]
  end

  get "/login", to: "users#login_form", as: "login"
  post "/login", to: "users#login"
  post "/logout", to: "users#logout", as: "logout"
  # get "/users/current", to: "users#current", as: "current_user"
end

# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
