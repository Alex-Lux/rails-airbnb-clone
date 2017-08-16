Rails.application.routes.draw do

  resources :pethomes do
  resources :pets, only: [ :create ]
  end
   root to: 'pethomes#index'


  devise_for :users

  get 'account', to: 'users#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
