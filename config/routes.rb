Rails.application.routes.draw do

  get 'mypages/index'
  get 'users/index'
  root 'mypages#index'
  resources :users
end
