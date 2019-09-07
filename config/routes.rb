Rails.application.routes.draw do
  get 'reviews/index'
  get 'reviews/show'
  get 'reviews/new'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'trips#index'

  resources :trips do
    resources :locations
  end
  resources :trips do
    resources :reviews
  end

  resources :locations do
    resources :addresses
  end
end
