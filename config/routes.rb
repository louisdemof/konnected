Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  mount StripeEvent::Engine, at: '/stripe-webhooks'

  resources :projects, except: [:destroy] do
    resources :project_pages, only: [:new, :create, :destroy]
    resources :project_features, only: [:new, :create, :destroy]
  end

  resources :orders, only: [:show, :create] do
    resources :payments, only: :new
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
