Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :pizzaria, only: [:index, :show] do
    resources :reviews, only: [:index, :new, :create, :destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
