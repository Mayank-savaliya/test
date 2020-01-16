Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#home'
  resources :products
  #get '/products/foo/:id', to: 'products#foo'
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  #get 'order', to:  'orders#new'
  #post 'order', to: 'orders#create'
  #get 'orders', to: 'orders#show'
  #resources :orders
  resources :carts
  get 'foo', to: 'products#foo'
  get 'foo/:id', to: 'products#foo'
end
