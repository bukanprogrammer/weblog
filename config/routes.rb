Rails.application.routes.draw do
  devise_for :users

  root 'home#index'

  resources :categories

  resources :articles

  resources :subscribers, only: [:create]

  get :about, to: 'about#index'

  get :terms, to: 'terms#index'
  
  get :privacy_policy, to: 'privacy_policy#index'

  get 'search/articles', to: "articles#search"

  namespace :admin do
    resources :articles
  end

end
