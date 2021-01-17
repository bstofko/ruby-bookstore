Rails.application.routes.draw do
  resources :book_reviews
  resources :book_formats
  resources :book_format_types
  resources :publishers
  resources :authors
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'home/about'
  root 'books#index'
  

end
