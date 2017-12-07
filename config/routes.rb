Rails.application.routes.draw do
  root 'pages#index'
  
  # land
  get 'lands' => 'pages#lands'
  
  # action
  get 'logout' => 'sessions#destroy'
  post '/' => 'sessions#create'
  get 'signup' => 'users#new'
  
  # users
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
