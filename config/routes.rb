Rails.application.routes.draw do
  devise_for :users
  root to: "contents#index"
  resources :contents do
    collection do
      get :search
    end
    resources :answers, only: [:create, :destroy]
  end
  resources :users, only: [:show, :edit, :update] do
    collection do
      get :search
    end
  end
  resources :relationships, only: [:create, :destroy]
end
