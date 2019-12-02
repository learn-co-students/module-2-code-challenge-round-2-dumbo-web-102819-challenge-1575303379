Rails.application.routes.draw do
  resources :appearances, only: [:index, :show, :new, :create, :post]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests, only: [:index, :show, :new, :create]
  resources :episodes, only: [:index, :show, :new, :create]
end
