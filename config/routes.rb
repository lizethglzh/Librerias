Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :stores
  resources :books

  get 'search',to: "books#search"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "books#index"
end
