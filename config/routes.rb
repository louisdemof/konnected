Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}
  root to: 'pages#home'
  mount StripeEvent::Engine, at: '/stripe-webhooks'
  resources :solicitations, only: [:index, :show, :destroy]
  resources :projects, except: [:destroy] do
    resources :project_pages, only: [:new, :create, :destroy]
    resources :project_features, only: [:new, :create, :destroy]
    resources :solicitations, only: [:new, :create] do 
      resources :intermediary_updates, only: [:index, :new, :create, :edit, :update, :destroy, :show] do
        resources :comments, only: :create
      end
    end
  end

  resources :orders, only: [:show, :create] do
    resources :payments, only: :new
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
