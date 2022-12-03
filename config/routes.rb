Rails.application.routes.draw do
  resources :carts
  resources :lineitems
  get 'shopper/index'
  #get '/',to:"shopper#index"
  root "shopper#index", as: "shopper"
  resources :products
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
