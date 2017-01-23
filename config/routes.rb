Rails.application.routes.draw do
  # root 'root#index'
  resources :products
  root to: 'products#index'
end
