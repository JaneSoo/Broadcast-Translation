Rails.application.routes.draw do
  get 'dashboard/index'
  root 'dashboard#index'

  resources :users

  scope do
    devise_for :users
  end
  
end
