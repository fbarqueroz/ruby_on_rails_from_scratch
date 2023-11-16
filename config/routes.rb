Rails.application.routes.draw do
  resources :categories
  # # Delete
  # delete '/products/:id', to: 'products#destroy'
  
  # # Patch -> update an existing product
  # patch '/products/:id', to: 'products#update'

  # # Post
  # post '/products', to: 'products#create'

  # # Get
  # get '/products', to: 'products#index'
  # get '/products/new', to: 'products#new', as: :new_product
  # get '/products/:id', to: 'products#show', as: :product
  # get '/products/:id/edit', to: 'products#edit', as: :edit_product

  resources :products, path: '/' # Can resume all the request in one line code (delete, get, put, post, etc.)
end
