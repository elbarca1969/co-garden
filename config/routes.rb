Rails.application.routes.draw do
  devise_for :users
  root to: "contents#index"
  resources :contents do
    resources :answers, only: [:create, :destroy]
  end
  resources :users, only: [:show, :edit, :update]
end
