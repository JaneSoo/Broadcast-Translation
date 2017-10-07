Rails.application.routes.draw do
  resources :translators
  get 'dashboard/index'
  root 'dashboard#index'
end
