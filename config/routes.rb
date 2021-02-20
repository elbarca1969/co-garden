Rails.application.routes.draw do
  devise_for :users
  root to: "contents#index"
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
