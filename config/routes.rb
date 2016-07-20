Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#index'
  #root 'devise/sessions#new'
  post '/homes/get_users' => "home#get_users"
  resources :visitors do 
    get :export_exel, on: :collection
    post :import_exel, on: :collection
  end
  
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  
end
