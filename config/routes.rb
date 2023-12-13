Rails.application.routes.draw do
  post 'top/login'
  get 'top/logout'
  get 'mypages/index'
  get 'users/index'
  get 'groups/new'
  root 'users#index'
  resources :users
  resources :groups
  resources :joins, only: [:create, :destroy]
end



