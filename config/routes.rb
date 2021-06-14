Rails.application.routes.draw do
  resources :stores
  resources :shipping_methods
  resources :payments
  resources :payment_methods
  resources :product_taxons
  resources :taxons
  resources :taxonomies
  resources :shipping_categories
  resources :tax_rates
  resources :product_properties
  resources :properties
  resources :product_option_types
  resources :varients
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
