Rails.application.routes.draw do
  resources :categories
  resources :products
  resources :users_admin, controller: 'users'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
