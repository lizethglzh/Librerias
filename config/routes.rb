Rails.application.routes.draw do
  resources :publishers
  devise_for :users
  resources :users
  resources :stores
  resources :books
  resources :search

  resources :stores do
  member do
  	get 'add_book'
  end
end


  get 'search',to: "books#search"
  get 'publisher',to: "publisher#show"
  root to: "books#index"
end
