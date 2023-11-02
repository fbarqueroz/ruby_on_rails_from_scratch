Rails.application.routes.draw do
  # Post
  post '/products', to: 'products#create'

  # Get
  get '/products', to: 'products#index'
  get '/products/new', to: 'products#new', as: :new_product
  get '/products/:id', to: 'products#show', as: :product
  get '/products/:id/edit', to: 'products#edit', as: :edit_product
end
