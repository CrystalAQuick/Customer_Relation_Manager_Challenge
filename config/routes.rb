Rails.application.routes.draw do
  resources :customers, only: %i[index]

  get 'customers/alphabetized', to: 'customers#alpha', as: 'alpha'
  get 'customers/missing_email', to: 'customers#missing', as: 'missing'

  root to: "customers#index"

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
