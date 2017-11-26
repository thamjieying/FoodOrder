Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.htm
  resources :orders, only: [:index, :show]
  # , defaults: { :format => 'json'}
end
