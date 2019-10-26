Rails.application.routes.draw do
  get 'control_users/index'
  devise_for :users
  get 'welcome/index'
  root 'welcome#index'
  resources :products
  resources :addresses
  resources :customers
end
