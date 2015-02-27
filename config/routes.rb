Rails.application.routes.draw do
  resources :cities

  root to: 'visitors#index'
  devise_for :users
  resources :users
  resources :users, path: '/all_users'
end
