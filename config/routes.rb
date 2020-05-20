Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#landing'
  get "/home", to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :boats do
    resources :deals do
      resources :reviews, only: [ :new, :create ]
    end
    resources :review, only: [ :destroy ]
  end
    resources :boats, only: [ :destroy ]
end
