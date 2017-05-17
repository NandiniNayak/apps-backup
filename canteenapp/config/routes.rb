Rails.application.routes.draw do
  get 'price/page'

  resources :orders
  resources :sumnes
  root 'store#index'

  resources :line_items
  resources :carts
  resources :menus
  root 'home#page'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
