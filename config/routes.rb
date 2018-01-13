Rails.application.routes.draw do
  root 'welcome#welcome'

  resources :sessions, only: [:new, :create] do
    get :delete
  end
  resources :accounts, only: [:new, :create]

  get 'dashboard', to: 'dashboard#dashboard'
end
