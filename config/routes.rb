Rails.application.routes.draw do
  devise_for :users

  authenticated :user do
    root to: "home#index", as: :authenticated_root
  end

  unauthenticated :user do
    root to: "pages#landing", as: :unauthenticated_root
  end

  get '/profile', to: 'profile#index'

  namespace :api do
    resources :plays, only: :create
  end

  resources :charges, only: :new
end
