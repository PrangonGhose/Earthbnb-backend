Rails.application.routes.draw do
  resources :houses, only: %i[index show create destroy]
  resources :reservations, only: %i[index create]
  resources :users, only: %i[index create]
end
