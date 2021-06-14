Rails.application.routes.draw do
  resources :option_types
  resources :tax_categories
  resources :products
  resources :countries
  resources :states
  resources :zones
  resources :promotion_categories
  resources :promotions
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
