Rails.application.routes.draw do
  
  root 'dashboard#index'

  resources :broadcast_rooms
  resources :translators
  resources :users
  resources :events

  scope 'auth' do
    devise_for :users
  end
  
end
