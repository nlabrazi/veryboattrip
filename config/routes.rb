Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html



  resources :users, except: :destroy do
    resources :deals, only: [ :new, :create, :update ]
    resources :boats, only: [ :new, :create, :update ] do
      resources :reviews, only: [ :new, :create ]
    end
    resources :review, only: [ :destroy ]
  end
    resources :boats, only: [ :destroy ]



end
