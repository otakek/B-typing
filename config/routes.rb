Rails.application.routes.draw do
  devise_for :users
  get 'setting/index'
  root "setting#index"

  resources :setting, only: [:edit, :new]
  resources :users, only: [:update]
  resources :words, only: [:index, :new, :create]
end
