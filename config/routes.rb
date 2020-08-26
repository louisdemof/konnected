Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :solicitations, only: [:index, :show, :destroy]

  resources :projects, except: [:destroy] do
    resources :project_pages, only: [:new, :create, :destroy]
    resources :project_features, only: [:new, :create, :destroy]
    resources :solicitations, only: [:new, :create] do 
      resources :intermediary_updates, only: [:index, :new, :create, :edit, :update, :destroy, :show]
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
