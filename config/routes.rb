Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: "home#index"
  # get '/music', to: 'music#index'
  # # get '/shows', to: 'shows#index'
  # resources :shows
  # get '/contact', to: 'contact#index'
  # post '/subscribe', to: "subscriptions#create"
  # get "/about", to: "about#index"
end
