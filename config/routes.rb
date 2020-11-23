Rails.application.routes.draw do
  resources :properties
  devise_for :accounts
  get 'public/index', to: 'public#index'
  root to:  'public#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
