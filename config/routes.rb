Rails.application.routes.draw do
  get 'twitters/index'
  #get 'sessions/new'
  resources :twitters
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
