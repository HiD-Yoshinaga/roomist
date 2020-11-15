Rails.application.routes.draw do
  devise_for :users
  root to: 'coordinates#index'
  resources :coordinates
end
