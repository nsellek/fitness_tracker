Rails.application.routes.draw do
  root 'welcome#welcome'

  resources :sessions, only: [:new, :create]
  resources :accounts, only: [:new, :create]
end
