Rails.application.routes.draw do
  root to: "home#index"
  get '/music', to: 'music#index'
  get '/shows', to: 'shows#index'
  ## resources for shows instead?
  get '/contact', to: 'contact#index'
  post '/subscribe', to: "subscriptions#create"
end
