Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'products#index'
  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'
  resources :products do
    collection do
      get :top
    end
  end
  resources :users
  resources :baskets, only: [:new, :create]
end
