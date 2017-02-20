Rails.application.routes.draw do
  resources :quotes, only: :index
  resources :array_searches, only: [:new, :create]
end
