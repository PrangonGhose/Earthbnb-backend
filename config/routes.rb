Rails.application.routes.draw do
  resources :houses do
    get 'delete_page', on: :collection
  end
  resources :reservations
  resources :users
end
