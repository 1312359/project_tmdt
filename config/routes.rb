Rails.application.routes.draw do
  root 'pages#index'
  
  # land index
  get 'lands' => 'lands#index'
  
  # action
  get 'logout' => 'sessions#destroy'
  post '/' => 'sessions#create'
  get 'signup' => 'users#new'
  
  # users, lands
  resources :users, :lands, except: [:index]
  
  post 'lands/:id' => 'lands#bid', as: :bid

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
