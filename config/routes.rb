Rails.application.routes.draw do
  resources :portfolios
  resources :blogs

  # Customize routes
  get '/about-me', to: 'pages#about'
  get '/contact', to: 'pages#contact'

  # Set the root page
  root to: 'pages#home'
end
