Rails.application.routes.draw do

  # Override default resources routes and create a custom
  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  # Customize routes
  get '/about-me', to: 'pages#about'
  get '/contact', to: 'pages#contact'

  # Set the root page
  root to: 'pages#home'

  resources :blogs
end
