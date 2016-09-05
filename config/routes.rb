Rails.application.routes.draw do
  get 'admin' => 'admin#index'
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end
  get 'sessions/new'

  get "sessions/create"
  get "sessions/destroy"
  resources :users
  resources :orders
  resources :line_items
  resources :carts

  get "store/index"
  resources :products do
    get :who_bought, on: :member
  end

  resources :users
  resources :orders
  resources :line_items do
    member do
      put 'decrement'
    end
  end
  resources :carts
  get 'store/index'
  resources :products do
    get :who_bought, on: :member
  end

  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope '(:locale)', :locale => /en|es/ do
    resources :orders
    resources :line_items
    resources :carts
    root 'store#index', as: 'store'
  end

  #resources :store

end
