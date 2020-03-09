Rails.application.routes.draw do
  devise_for :users
  root to: 'books#index'
  resources :books
  resources :user_books, only: [:new, :create, :destroy]
end
