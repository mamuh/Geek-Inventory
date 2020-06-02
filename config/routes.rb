Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users
  resources :users, :only => [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :items do
    resources :reviews, only: [:index, :destroy, :new, :create]
    resources :transactions, only: [:create, :show]
  end

end
