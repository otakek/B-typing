Rails.application.routes.draw do
  devise_for :users
  get 'setting/index'
  root "setting#index"

  resources :setting, only: [:edit]
  resources :users, only: [:update]
end
