Rails.application.routes.draw do
  #resources :home
  resources :guestlists
  resources :users
  root 'users#index'
  post '/users/adduser' => 'users#create_to_queue'
end
