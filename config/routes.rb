Rails.application.routes.draw do
  resources :project_interests, path: "interests"
  resources :projects
  devise_for :users
  root to: 'pages#home'
  get '/dashboard', to: 'pages#dashboard', as: 'dashboard'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
