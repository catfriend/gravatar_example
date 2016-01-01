Rails.application.routes.draw do
  resources :users
  resources :phrases

  get 'signup' => 'users#new'

  root 'phrases#index'


end
