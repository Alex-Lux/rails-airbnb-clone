Rails.application.routes.draw do

  resources :pethomes do
    resources :pets, only: [ :create ]
    resources :bookings, only: [ :create, :udapte, :show, :destroy]
  end
   root to: 'pethomes#index'


  devise_for :users

  patch 'bookings/:id/approve', to: "bookings#approve_booking", as: :booking_approve
  get 'account', to: 'users#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
