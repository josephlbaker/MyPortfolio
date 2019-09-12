Rails.application.routes.draw do
  root to: 'pages#home'

  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :portfolios, except: [:show]

  resources :blogs do
    member do
      get :toggle_status
    end
  end
end
