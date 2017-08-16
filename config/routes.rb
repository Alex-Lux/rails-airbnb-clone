Rails.application.routes.draw do
   resources :pethomes

  devise_for :users
  root to: 'pethomes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
