Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#index'
  #root 'devise/sessions#new'
  post '/homes/get_users' => "home#get_users"
  resources :visitors
  
end
