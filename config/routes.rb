Rails.application.routes.draw do
<<<<<<< HEAD
  get 'top/main'
  post 'top/login'
  root 'top#main'
=======
  get 'users/index'
  root 'users#index'
  resources :users
>>>>>>> signup
end
