Rails.application.routes.draw do

  resources :pethomes do
  resources :pets, only: [ :create ]
  end

  devise_for :users

  get 'account', to: 'users#show'

  root to: 'pethomes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
