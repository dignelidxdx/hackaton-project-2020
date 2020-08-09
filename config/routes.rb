Rails.application.routes.draw do
  resources :project_interests, path: "interests"
  resources :projects
  devise_for :users
  devise_scope :user do
    get 'sign_out', to: 'devise/sessions#destroy'
  end
  root to: 'pages#home'
  get '/dashboard', to: 'pages#dashboard', as: 'dashboard'
end
