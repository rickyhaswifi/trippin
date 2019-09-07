Rails.application.routes.draw do
  root 'addresses#index'
  resources :trips do
  resources :locations
  end

  resources :locations do
  resources :addresses
  end
end
