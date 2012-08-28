Auth::Application.routes.draw do
  get "password_resets/new"

  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "signup" => "users#new", :as => "signup"
  root :to => "home#index"
  resources :users
  resources :sessions
  resources :password_resets
end
