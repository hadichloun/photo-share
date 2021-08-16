Rails.application.routes.draw do
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  get 'login', to: 'session#new'
  get 'logout', to: 'session#destroy'
  get 'signup', to: 'users#new'
  get 'sessions', to: 'sessions#new'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
