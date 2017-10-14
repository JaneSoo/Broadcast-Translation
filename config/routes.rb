Rails.application.routes.draw do
  
  root 'dashboard#index'

  resources :broadcast_rooms
  resources :translators
  resources :users
  resources :events
  resources :requests, only: [:show, :index]

  scope 'auth' do
    devise_for :users
  end
  
end
