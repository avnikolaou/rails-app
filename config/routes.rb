Rails.application.routes.draw do

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  # Override default resources routes and create a custom

  resources :portfolios, except: [:show]
  get 'angular-items', to: 'portfolios#angular'
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  # Customize routes
  get '/about-me', to: 'pages#about'
  get '/contact', to: 'pages#contact'

  # Set the root page
  root to: 'pages#home'

  resources :blogs do
    member do
      get :toggle_status
    end
  end
end
