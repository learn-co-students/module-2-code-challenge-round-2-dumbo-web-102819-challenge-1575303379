Rails.application.routes.draw do
  resources :episode_guests
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests, only: [:index, :show]
  resources :episodes, only: [:index, :show]

  get "/new_appearance", to: "episode_guests#new", as: "new_appearance"
end
