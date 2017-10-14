Rails.application.routes.draw do
  resources :events
  get 'dashboard/index'
  root 'dashboard#index'

  resources :users

  scope 'auth' do
    devise_for :users
  end
  
end
