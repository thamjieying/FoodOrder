Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.htm
  resources :orders, only: [:index]
  get 'orders/:order_id', to: 'orders#show'
end
