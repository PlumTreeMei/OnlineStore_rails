Rails.application.routes.draw do
  get 'access/new',to:"access#new",as:"login"
  post 'access/new', to: 'access#create'
  post 'logout',to:"access#destroy",as:"logout"
  get 'admin/index', to: "admin#index",as:"admin"
  resources :users
  resources :orders
  resources :carts
  resources :lineitems
  get 'shopper',to:"shopper#index"
  get 'shopper/:id', to: 'shopper#show',as: "detail"
  #get '/',to:"shopper#index"
  #root "shopper#index", as: "shopper"

  resources :products
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
