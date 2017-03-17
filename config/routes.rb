Rails.application.routes.draw do
  root to: "home#index"
  get '/music', to: 'music#index'
  get '/shows', to: 'show#index'
  ## resources for shows instead?
  get '/contact', to: 'contact#index'
end
