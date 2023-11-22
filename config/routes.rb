Rails.application.routes.draw do
  get 'top/main'
  post 'top/login'
  get 'top/logout'
  get 'users/index'
  root 'users#index'
  resources :users
end