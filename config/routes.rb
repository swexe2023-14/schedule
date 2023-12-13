Rails.application.routes.draw do

  get 'mypages/index'
  get 'users/index'
  root 'groups#index'
  resources :users
  resources :groups
end
