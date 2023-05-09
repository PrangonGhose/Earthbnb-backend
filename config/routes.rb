Rails.application.routes.draw do
  post '/login',    to: 'sessions#create'
  post '/logout',   to: 'sessions#destroy'
  get "/reservations/:username", to: 'reservations#index'

  resources :houses, only: %i[index show create destroy]
  resources :reservations, only: %i[index create]
  resources :users, only: %i[index create]
end
