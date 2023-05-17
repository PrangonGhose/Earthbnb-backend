Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  post '/login',    to: 'sessions#create'
  post '/logout',   to: 'sessions#destroy'
  get "/reservations/:username", to: 'reservations#index'

  resources :houses, only: %i[index show create destroy]
  resources :reservations, only: %i[index create]
  resources :users, only: %i[create]
end
