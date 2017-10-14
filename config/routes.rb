Rails.application.routes.draw do

  scope 'admin' do
    resources :broadcast_rooms
    resources :translators
    resources :users
    resources :events
    resources :requests, only: [:show, :index]
    resources :dashboard, only: :index

    scope 'auth' do
      devise_for :users
    end
  end

  root "home#index"

end
