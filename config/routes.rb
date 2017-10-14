Rails.application.routes.draw do
  
  root 'dashboard#index'

  resources :translators
  resources :users

  scope 'auth' do
    devise_for :users
  end
  
end
