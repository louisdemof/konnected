Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}
    resources :users, :only => [:show]
  root to: 'pages#home'
  get '/homepage', to: 'pages#homepage'
  patch 'solicitations/:id/validate', to: "solicitations#validate", as: :validate_solicitation
  patch 'solicitations/:id/confirm_project', to: "projects#confirm_project", as: :confirm_project
  mount StripeEvent::Engine, at: '/stripe-webhooks'
  resources :notifications do
    collection do
      post :mark_as_read
    end
  end
  resources :solicitations, only: [ :show, :destroy] do
    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: [:index, :show, :destroy]
  resources :users, only: [:show, :index]
  resources :projects do
    resources :project_pages, only: [:new, :create, :destroy]
    resources :project_features, only: [:new, :create, :destroy]
    resources :solicitations, only: [:new, :create, :index] do
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
