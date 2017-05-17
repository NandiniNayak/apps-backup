Rails.application.routes.draw do
  resources :tests
  resources :answers
  devise_for :people
  devise_for :users
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
