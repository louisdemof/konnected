Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}
  root to: 'pages#home'

  resources :projects, except: [:destroy] do
    resources :project_pages, only: [:new, :create, :destroy]
    resources :project_features, only: [:new, :create, :destroy]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
