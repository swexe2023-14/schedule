Rails.application.routes.draw do
  post 'top/login'
  get 'top/logout'
  get 'mypages/index'
  get 'users/index'

  root 'users#index'
  resources :users
  resources :groups
end

