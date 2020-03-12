Rails.application.routes.draw do
  resources :games do
    resources :rentals, only: [ :new, :create ]
  end
  resources :rentals, only: [ :index, :show, :destroy ]
  devise_for :users
  root to: 'pages#home'
  get 'dashboard', to: 'pages#dashboard'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
