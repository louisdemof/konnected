Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}
  root to: 'pages#home'
  patch 'solicitations/:id/validate', to: "solicitations#validate", as: :validate_solicitation
  mount StripeEvent::Engine, at: '/stripe-webhooks'
  resources :solicitations, only: [:show, :destroy]
  resources :projects, except: [:destroy] do
    resources :project_pages, only: [:new, :create, :destroy]
    resources :project_features, only: [:new, :create, :destroy]
    resources :solicitations, only: [:new, :create, :index] do
      resources :intermediary_updates, only: [:index, :new, :create, :edit, :update, :destroy, :show]
    end
  end

  resources :orders, only: [:show, :create] do
    resources :payments, only: :new
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
