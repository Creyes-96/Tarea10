Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
  resources :drivers
  resources :cars
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :prueba

  end
  