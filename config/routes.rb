Rails.application.routes.draw do
  get '/products', to: 'products#index'
  get 'products/:id', to: 'products#show', as: :product
  # '#show' method display an specific product
end