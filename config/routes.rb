Rails.application.routes.draw do
  devise_for :users
  root to: 'coordinate#index'
  resources :coordinate 
end
