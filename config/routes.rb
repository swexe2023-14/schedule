Rails.application.routes.draw do
  post 'top/login'
  get 'top/logout'
  get 'mypages/index'
  get 'users/index'
  get 'groups/new'
  #get 'groups/:e.id', to: 'groups#show', as:'show'
  root 'users#index'
  resources :users
  resources :groups
  resources :calendars
  resources :events
  resources :joins, only: [:create, :destroy]
  resources :groups do
    resources :events
  end
end



