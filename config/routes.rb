# config/routes.rb
Rails.application.routes.draw do
  resources :gyms, only: [:index, :show, :destroy, :update]
  resources :clients, only: [:index, :show, :destroy, :update]
  resources :memberships, only: [:create]
end
