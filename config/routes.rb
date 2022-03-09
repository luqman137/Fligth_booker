Rails.application.routes.draw do
 
  #root to: "home#index"
  root 'flights#index'
  resources :flights 
  resources :bookings
  devise_for :users 
 
end
