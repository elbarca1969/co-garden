Rails.application.routes.draw do
  devise_for :users
  root to: "contents#index"
  post '/contents/guest_sign_in', to: 'contents#new_guest'
  resources :contents do
    collection do
      get :search
    end
    resources :answers, only: [:create, :destroy]
    resources :tries, only: [:index, :create, :destroy] do
      member do
        get :list
      end
    end
    resources :comments, only: [:create, :destroy]
  end
  resources :users, only: [:show, :edit, :update] do
    collection do
      get :search
    end
    member do
      get :try
    end
  end
  resources :relationships, only: [:create, :destroy] do
    member do
      get :following, :followers
    end
  end
end
