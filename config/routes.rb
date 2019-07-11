Rails.application.routes.draw do
  devise_for :users
  root 'groups#index'
  resources :users
  resources :groups, only: [:new, :create, :edit, :update] do
    resources :messages, only: [:index, :create]
  end
end





#   resources :users, only: [:index, :edit, :update]
